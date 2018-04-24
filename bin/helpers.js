const _ = require('lodash')
const { URL } = require('url')

function joinPath (base, path) {
  base = base || ''
  return base.replace(/\/+$/, '') + '/' + path.replace(/^\/+/, '')
}

module.exports = {
  uri (path) {
    return joinPath(this.baseURL, path)
  },

  s (path) {
    return joinPath(this.staticURL, path)
  },

  aff (url, params = {}) {
    url = _.has(this.products, url) ? this.products[url] : url
    url = new URL(url)
    url.searchParams.set(
      this.affiliates.key,
      this.affiliates.id
    )
    _(params).each((val, key) => url.searchParams.set(key, val))
    return url.href
  }
}
