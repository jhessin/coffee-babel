CoffeeScript = require 'coffeescript'

{ compile, register } = CoffeeScript

defaultOptions =
  sourceMap: true
  transpile:
    presets: [ 'env' ]

CoffeeScript.compile = (file, options) ->
  compile file, {
    options...
    defaultOptions...
  }

CoffeeScript.register()

module.exports = (options)->
  defaultOptions = options
