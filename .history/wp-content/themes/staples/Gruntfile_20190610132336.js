module.exports = function(grunt) {
  //require('jit-grunt')(grunt);

  grunt.initConfig({
    less: {
      development: {
        options: {
          sourceMap: true,
          compress: true,
          yuicompress: true,
          optimization: 2
        },
        files: {
          "assets/css/style.css": "assets/less/style.less" // destination file and source file
        }
      }
    },
    watch: {
      styles: {
        files: ['assets/less/**/*.less'], // which files to watch
        tasks: ['less'],
        options: {
          nospawn: true
        } 
      }
    }
  });
  grunt.loadNpmTasks('grunt-contrib');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.registerTask('default', ['less', 'watch']); 
};