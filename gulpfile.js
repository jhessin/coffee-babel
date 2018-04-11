// DO NOT MODIFY THIS FILE UNLESS YOU KNOW WHAT YOU ARE DOING
// It enables the use of ES6 syntax in your gulpfile.coffee file

defaultOptions = {
  sourcemap: true,
  transpile: {
    presets: ['env']
  }
}
require('module').prototype.options = defaultOptions;
require('coffeescript/register');

module.exports = require('./gulpfile.coffee');
