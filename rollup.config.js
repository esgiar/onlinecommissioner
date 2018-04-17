const env = process.env.NODE_ENV || 'development'

export default {
  output: {
    format: 'iife',
    globals: {
      zepto: '$',
      moment: 'moment',
      react: 'React',
      'react-dom': 'ReactDOM'
    }
  },
  external: [
    'zepto',
    'moment',
    'react',
    'react-dom'
  ],
  plugins: [
    require('rollup-plugin-node-resolve')(),
    require('rollup-plugin-replace')({
      'process.env.NODE_ENV': JSON.stringify(env)
    }),
    require('rollup-plugin-commonjs')(),
    require('rollup-plugin-babel')({
      exclude: 'node_modules/**'
    }),
    env === 'production' && require('rollup-plugin-uglify')()
  ]
}
