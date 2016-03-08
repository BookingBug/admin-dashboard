//Gulp components
var gulp           = require('gulp'),
    coffee         = require('gulp-coffee');        //Coffee to js compiler
    concat         = require('gulp-concat'),        //concats files
    uglify         = require('gulp-uglify'),        //uglifies files
    ngAnnotate     = require('gulp-ng-annotate'),   //annotates (angular brakes without this)
    minifyCSS      = require('gulp-minify-css'),    //minifies css files
    runSequence    = require('run-sequence'),       //runs gulp tasks in sequence (tasks as array)
    sass           = require('gulp-sass'),          //sass compiler
    mainBowerFiles = require('main-bower-files'),   //gets the main bower dependencies files
    fs             = require('fs'),                 //filesystem util
    path           = require('path'),               //path for fs
    gulpif         = require('gulp-if'),            //execute tasks conditionally
    gutil          = require('gulp-util'),          //utilities for gulp plugins
    connect        = require('gulp-connect'),       //spawns local server for testing
    modRewrite     = require('connect-modrewrite'), //modrewrite for tmp server
    open           = require('gulp-open'),          //opens the browser
    sourcemaps     = require('gulp-sourcemaps');    //creates sourcemaps for debugging


/**
 * IF GULP IS TYPED WITH NO OTHER ARGUMENTS THIS WILL BE EXECUTED
 */
gulp.task('default', function() {
    return runSequence(
        //everything in square brackets executes in parallel
        //to force sequential execution put your task outside brackets
        [
            'core-js',
            'lazy-js',
            'css',
            'fonts'
        ]
    );
});

/**
 * START ALL THE WATCHERS
 */
gulp.task('watch-init', function() {
    return runSequence(
        //everything in square brackets executes in parallel
        //to force sequential execution put your task outside brackets
        [
            'watch-core-js',
            'watch-lazy-js',
            'watch-css'
        ]
    );
});

/**
 * JAVASCRIPT RELATED TASKS
 */
//Concat & compress vendor + the core files
gulp.task('core-js', function () {
    //Get the vendor files
    var src = mainBowerFiles({
        includeDev : true,
        filter     : new RegExp('.js$'),
        overrides  : {
            'AdminLTE' : {
                ignore : true
            }
        }
    });

    //Concat the vendor with the core scripts
    return gulp.src(src.concat([
        'src/js/**/*.core.js.coffee'
    ]))
        .pipe(gulpif(/.*coffee$/, coffee().on('error', gutil.log)))
        .pipe(concat('bb-admin-core.min.js'))
        .pipe(ngAnnotate())
        .pipe(uglify())
        .pipe(gulp.dest('release/js'));
});

//Concat & compress application specific files
gulp.task('lazy-js', function () {
    var folders = getFolders('src/js');

    return folders.map(function(folder) {
        return gulp.src(path.join('src/js', folder, '/**/*.lazy.js.coffee'))
            .pipe(gulpif(/.*coffee$/, coffee().on('error', gutil.log)))
            // concat into foldername.js
            .pipe(concat('bb-admin-' + folder + '.min.js'))
            .pipe(ngAnnotate())
            .pipe(uglify())
            // write to output
            .pipe(gulp.dest('release/js'));
    });
});

//File watcher: if a core js is edited run concat compressor again
gulp.task('watch-core-js', ['core-js'], function () {
    gulp.watch('src/js/**/*.core.js.coffee', ['core-js']);
});

//File watcher: if a lazy js is edited run concat compressor again
gulp.task('watch-lazy-js', ['lazy-js'], function () {
    gulp.watch('src/js/**/*.lazy.js.coffee', ['lazy-js']);
});


/**
 * END OF JAVASCRIPT RELATED TASKS
 */

/**
 * CSS RELATED TASKS
 */
//compile app specific scss to css
gulp.task('css', function() {
    //Get the vendor files

    var src = mainBowerFiles({
        includeDev : true,
        filter     : new RegExp('.css$')
    });

    //Add bootstrap to the top of the file so it doesnt override adminlte styles
    src.unshift(
        'src/scss/bootstrap.scss'
    );

    //Put custom scss on the bottom so it can override all
    src.push(
        'src/scss/bb-admin.scss'
    );

    gulp.src(src)
        .pipe(sourcemaps.init())
        .pipe(concat('bb-admin.min.css'))
        //The onError handler prevents Gulp from crashing when you make a mistake in your SASS
        //compile & compress
        .pipe(sass({onError: function(e) { console.log(e); }, outputStyle: 'compressed'}).on('error', gutil.log))
        //make source-maps but put them in a different folder & not include content
        .pipe(sourcemaps.write('maps', {includeContent: false}))
        .pipe(gulp.dest('release/css'));
});

//watch app specific scss
gulp.task('watch-css', ['css'], function () {
    gulp.watch('src/scss/*.scss', ['css']);
});

/**
 * END OF CSS RELATED TASKS
 */

/**
 * FONTS RELATED TASKS
 */
gulp.task('fonts', function() {
    //for now copy over the bootstrap fonts
    gulp.src('bower_components/bootstrap-sass/assets/fonts/**/*.{ttf,woff,woff2,eof,eot,svg}')
        .pipe(gulp.dest('release/fonts'));
});
/**
 * END OF FONTS RELATED TASKS
 */

/**
 * TMP LOCAL SERVER for DEV
 */
gulp.task('web-server', function() {
    //@todo Update connect version (here 2.3.1) when issue is fixed, a bug in later versions ignores index.html in directories.
    connect.server({
        root: [
            'release'
        ],
        port: 8000,
        livereload: true,
        middleware: function(connect, options) {
            var middleware = [];

            //1. the rules that shape our mod-rewrite behavior
            var rules = [
                '!\\.html|\\.js|\\.css|\\.svg|\\woff|\\ttf|\\eot|\\woff2|\\.jp(e?)g|\\.png|\\.gif$ /index.html'
            ];

            middleware.push(modRewrite(rules));

            //2. original middleware behavior
            var base = options.root;
            if (!Array.isArray(base)) {
                base = [base];
            }

            base.forEach(function(path) {
                console.log(path);
                middleware.push(connect.static(path));
            });

            return middleware;
        }
    });
});

gulp.task('open-browser', ['web-server'], function() {
    return gulp.src(__filename)
        .pipe(open({uri: 'http://localhost:8000'}));
});
/**
 * END OF LOCAL TMP SERVER
 */

/**
 * Scan for directories in a directory
 * @param dir
 * @returns {*}
 */
function getFolders(dir) {
    return fs.readdirSync(dir)
        .filter(function(file) {
            return fs.statSync(path.join(dir, file)).isDirectory();
        });
}