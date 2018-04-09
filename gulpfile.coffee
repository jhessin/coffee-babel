import gulp from 'gulp'
import coffee from 'gulp-coffee'
import sourcemaps from 'gulp-sourcemaps'

paths =
  src:
    coffee: './src/**/{*.,*.*.}coffee'
  dest: './lib'

compileCoffee = ->
  gulp.src paths.src.coffee,
    since: gulp.lastRun(compileCoffee)
  .pipe sourcemaps.init()
  .pipe coffee
    bare: true
    header: false
    transpile:
      presets: ['env']
  .pipe sourcemaps.write()
  .pipe gulp.dest paths.dest

export {
  compileCoffee as coffee
}

export watch = ->
  gulp.watch paths.src.coffee,
    ignoreInitial: false
    compileCoffee

export default compileCoffee
