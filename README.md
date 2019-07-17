# coffee-babel [![NPM version][npm-image]][npm-url] [![Build Status][travis-image]][travis-url] [![Dependency Status][daviddm-image]][daviddm-url] [![Coverage percentage][coveralls-image]][coveralls-url]

# NOTICE: No longer maintained. Feel free to fork if you are interested.

This is a node application generated using [generator-coffee-node](https://github.com/jhessin/generator-coffee-node).

This package came about as an attempt to improve on the default `coffeescript/register` method of importing .coffee files. Currently there is no way to pass options. This wrapper does that for you.

This wouldn't be possible without [this post](https://github.com/jashkenas/coffeescript/issues/4769#issuecomment-341394509). The primary code is a copy-paste of his code with a few tweaks - many thanks to him.

By default this package uses v2.2.4 of coffeescript. Any modern version of node should use whatever you are using though.

## Usage

First install the package using yarn or npm:

```bash
yarn add --dev coffee-babel
```

Then you can require the file before any coffeescript.

```javascript
require('coffee-babel')({ // This is the default behavior
  transpile: {
    presets: [ 'env' ]
  }
})

module.exports = require('myfile.coffee'); // file is transpiled.
```

You can even change the behavior of the compiler by calling the required function again.

```javascript
coffeeConfig = require('coffee-babel');

coffeeConfig() // removes the default config

require('myOldES5File.coffee');

coffeeConfig({
  transpile: {
    presets: [ 'env' ]
  }
})

require('myNewES6File.coffee');
```
