defaultOptions =
  sourcemap: true
  transpile:
    presets: [ 'env' ]

require('module').prototype.options = defaultOptions
require('coffeescript/register')

module.exports = (options)->
  require('module').prototype.options = options ? {}
  require('coffeescript/register')
