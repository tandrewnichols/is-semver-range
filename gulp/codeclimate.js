var gulp = require('gulp');
var codeclimate = require('gulp-codeclimate-reporter');

gulp.task('codeclimate', function() {
  if (process.version.indexOf('v4') > -1) {
    gulp.src('coverage/lcov.info', { read: false })
      .pipe(codeclimate({
        token: 'ce5fe90d0e15f16f528f1ab3bfd8f722f5e1f6388c161aff64ea8b098d8dc93b'
      }));
  }
});

