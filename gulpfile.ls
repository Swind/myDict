require! {
    gulp
    'gulp-jade': jade
    'gulp-util': gutil
}

build-views = (dev-mode=false) ->
    gutil.log 'Dev Mode =', dev-mode
    gulp.src 'app/views/*.jade'
      .pipe jade {
        locals: {
          env: \prod
        }
      }
      .pipe gulp.dest './build'

gulp.task 'views:build' ! ->
    build-views dev-mode=false

gulp.task 'views:dev' ! ->
    build-views dev-mode=true
