var gulp = require('gulp');
var svgmin = require('gulp-svgmin');
var connect = require('gulp-connect');
var config = require('../config').svg;

gulp.task('svg', function () {
    return gulp.src(config.src)
        .pipe(svgmin())
        .pipe(gulp.dest(config.dest))
        .pipe(connect.reload());;
});
