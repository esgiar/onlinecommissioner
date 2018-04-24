const Fs = require('fs')
const Path = require('path')
const _ = require('lodash')
const yaml = require('js-yaml')
const matter = require('gray-matter')
const moment = require('moment-timezone')
const helpers = require('./helpers')

const SEP = /\\+/g
const DEFAULT_LANG = 'nunjucks'

function loadYAML (file) {
  let yml

  try {
    yml = _.trim(Fs.readFileSync(file))
  } catch (e) {
    if (e.code === 'ENOENT') {
      return null
    }
  }

  if (yml) {
    return yaml.safeLoad(yml, {
      filename: file
    })
  }
}

function loadJS (file) {
  try {
    return require(file)
  } catch (e) {
    return null
  }
}

const loaders = {
  '.yaml': loadYAML,
  '.yml': loadYAML,
  '.json': loadJS,
  '.js': loadJS
}

function joinURI (base, path) {
  base = base || ''
  return base.replace(/\/+$/, '') + '/' + path.replace(/^\/+/, '')
}

function loadFile (file) {
  const ext = Path.extname(file)

  if (_.has(loaders, ext)) {
    return loaders[ext].call(null, file)
  }
}

function loadContext (files) {
  const cwd = process.cwd()

  return _(files)
    .map((file) => Path.resolve(cwd, file))
    .uniq()
    .map(loadFile)
    .filter()
    .reduce((ctx, data) => _.merge({}, ctx, data), {})
}

function prepareContext (options) {
  const p = parseFilename(options.filename, options.root, options.index)
  const c = loadContext(options.contexts)

  _.assign(c, _.mapValues(helpers, (fn) => (
    _.isFunction(fn) ? _.bind(fn, c) : fn
  )))

  c.meta = c.meta || {}
  c.meta.url = joinURI(c.baseURL, p)
  c.filename = options.filename
  c.path = p
  c.env = process.env.NODE_ENV || 'development'
  c.moment = moment
  c._ = _

  return c
}

function parseFilename (file, root = 'pages', index = 'index') {
  file = file.replace(SEP, '/')
  root = _.trimEnd(root, '/') + '/'

  const path = Path.parse(file)
  const rlen = root.length

  path.dir = path.dir.startsWith(root) ? path.dir.substr(rlen) : path.dir
  path.ext = '.html'
  path.base = path.name + path.ext

  if (path.name === index) {
    Object.assign(path, Path.parse(path.dir))
  }

  return Path.format(path).replace(SEP, '/')
}

function renderTemplate (options) {
  const context = _.merge(prepareContext(options), options.matter)

  options.render(options.contents, context, (err, html) => {
    if (err) {
      console.error(err)
    } else {
      options.stdout.write(html)
    }
  })
}

module.exports = {
  loadContext,

  render: function (renderers) {
    const filename = process.argv[2]
    const contents = Fs.readFileSync(filename)
    const file = matter(contents)
    const lang = file.data.lang || DEFAULT_LANG

    if (!_.has(renderers, lang)) {
      throw new Error(`No renderer registered for ${lang} templates`)
    }

    renderTemplate({
      matter: file.data,
      contents: file.content,
      filename: filename,
      contexts: process.argv.slice(3),
      stdout: process.stdout,
      render: renderers[lang]
    })
  }
}
