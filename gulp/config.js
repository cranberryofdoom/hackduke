var dest = './dist';
var src = './src';
var gutil = require('gulp-util');
var history = require('connect-history-api-fallback');

module.exports = {
  server: {
    settings: {
      root:  dest,
      host: 'localhost',
      port: 8080,
      livereload: {
        port: 35729
      },
      middleware: function(connect, opt) {
        return [ history() ];
      }
    }
  },
  svg: {
    src: src + '/svg/*.svg',
    dest: dest + '/svg'
  },
  sass: {
    src: src + '/styles/main.scss',
    dest: dest + '/styles',
    settings: {
      indentedSyntax: false, // Enable .sass syntax?
      imagePath: '/images' // Used by the image-url helper
    }
  },
  browserify: {
    settings: {
      transform: ['babelify', 'reactify']
    },
    src: src + '/js/index.jsx',
    dest: dest + '/js',
    outputName: 'index.js',
    debug: gutil.env.type === 'dev'
  },
  html: {
    src: 'src/index.html',
    dest: dest
  },
  watch: {
    src: 'src/**/*.*',
    tasks: ['build']
  }
};
