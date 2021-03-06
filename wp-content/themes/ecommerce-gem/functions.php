<?php
/**
 * eCommerce Gem functions and definitions.
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package eCommerce_Gem
 */

if ( ! function_exists( 'ecommerce_gem_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function ecommerce_gem_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on eCommerce Gem, use a find and replace
	 * to change 'ecommerce-gem' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'ecommerce-gem', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for custom logo.
	 */
	add_theme_support( 'custom-logo', array(
                'height'      => 98,
                'width'       => 400,
                'flex-width' => true
	) );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );
	add_image_size('ecommerce-gem-common', 370, 260, true);

	// Register navigation menu locations.
	register_nav_menus( array(
		'top' 		=> esc_html__( 'Top Header', 'ecommerce-gem' ),
		'primary' 	=> esc_html__( 'Primary Header', 'ecommerce-gem' ),
		'social'  	=> esc_html__( 'Social Links', 'ecommerce-gem' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form',
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	// Set up the WordPress core custom background feature.
	add_theme_support( 'custom-background', apply_filters( 'ecommerce_gem_custom_background_args', array(
		'default-color' => 'ffffff',
		'default-image' => '',
	) ) );

	// Add woocommerce support, gallery zoom, lightbox and thumbnail slider.
	add_theme_support( 'woocommerce' );
	add_theme_support( 'wc-product-gallery-lightbox' );
	add_theme_support( 'wc-product-gallery-slider' );

	$gallery_zoom = ecommerce_gem_get_option( 'enable_gallery_zoom' );

	if( 1 == $gallery_zoom ){
		add_theme_support( 'wc-product-gallery-zoom' );
	}
}
endif;
add_action( 'after_setup_theme', 'ecommerce_gem_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function ecommerce_gem_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'ecommerce_gem_content_width', 810 );
}
add_action( 'after_setup_theme', 'ecommerce_gem_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */

 
// Widgets
add_action('widgets_init', 'patchbazaar_widget_init');
function patchbazaar_widget_init()
{
    register_sidebar(array(
        'name' => __('Social Media and Address', 'patchbazaar'),
        'id' => 'footer-1',
        'description' => __('Widgets in this area will be shown on all posts and pages.', 'patchbazaar'),
        'before_widget' => '<div id="%1$s" class="widget %2$s">',
        'after_widget' => '</div>',
        'before_title' => '<h2 class="widgettitle">',
        'after_title' => '</h2>',
    ));
    register_sidebar(array(
        'name' => __('Privacy Policy', 'patchbazaar'),
        'id' => 'footer-privacy',
        'description' => __('Widgets in this area will be shown on all posts and pages.', 'patchbazaar'),
        'before_widget' => '<div id="%1$s" class="widget %2$s">',
        'after_widget' => '</div>',
        'before_title' => '<h2 class="widgettitle">',
        'after_title' => '</h2>',
    ));
    register_sidebar(array(
        'name' => __('Copyright', 'patchbazaar'),
        'id' => 'footer-copyright',
        'description' => __('Widgets in this area will be shown on all posts and pages.', 'patchbazaar'),
        'before_widget' => '<div id="%1$s" class="widget %2$s">',
        'after_widget' => '</div>',
        'before_title' => '<h2 class="widgettitle">',
        'after_title' => '</h2>',
    ));
}

function ecommerce_gem_widgets_init() {

	register_sidebar( array(
		'name'          => esc_html__( 'Blog Sidebar', 'ecommerce-gem' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here to appear in Sidebar.', 'ecommerce-gem' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );

	if( class_exists( 'WooCommerce' ) ){

		register_sidebar( array(
			'name'          => esc_html__( 'Shop Sidebar', 'ecommerce-gem' ),
			'id'            => 'shop-sidebar',
			'description'   => esc_html__( 'Widgets added here will appear in sidebar of shop pages only.', 'ecommerce-gem' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h3 class="widget-title">',
			'after_title'   => '</h3>',
		) );

	}

	register_sidebar( array(
		'name'          => esc_html__( 'Advertisements Below Slider', 'ecommerce-gem' ),
		'id'            => 'advertisement-area',
		'description'   => esc_html__( 'Add widgets here to appear in advertisement area below main slider of home page', 'ecommerce-gem' ),
		'before_widget' => '<div id="%1$s" class="%2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Home Page Widget Area', 'ecommerce-gem' ),
		'id'            => 'home-page-widget-area',
		'description'   => esc_html__( 'Add widgets here to appear in Home Page Widget Area.', 'ecommerce-gem' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s"><div class="container">',
		'after_widget'  => '</div></section>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
	register_sidebar( array(
		'name'          => sprintf( esc_html__( 'Footer %d', 'ecommerce-gem' ), 1 ),
		'id'            => 'footer-1',
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h4 class="widget-title">',
		'after_title'   => '</h4>',
	) );
	register_sidebar( array(
		'name'          => sprintf( esc_html__( 'Footer %d', 'ecommerce-gem' ), 2 ),
		'id'            => 'footer-2',
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h4 class="widget-title">',
		'after_title'   => '</h4>',
	) );
	register_sidebar( array(
		'name'          => sprintf( esc_html__( 'Footer %d', 'ecommerce-gem' ), 3 ),
		'id'            => 'footer-3',
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h4 class="widget-title">',
		'after_title'   => '</h4>',
	) );
	register_sidebar( array(
		'name'          => sprintf( esc_html__( 'Footer %d', 'ecommerce-gem' ), 4 ),
		'id'            => 'footer-4',
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h4 class="widget-title">',
		'after_title'   => '</h4>',
	) );
}
add_action( 'widgets_init', 'ecommerce_gem_widgets_init' );

/**
* Enqueue scripts and styles.
*/
function ecommerce_gem_scripts() {

	wp_enqueue_style( 'ecommerce-gem-fonts', ecommerce_gem_fonts_url(), array(), null );

	wp_enqueue_style( 'jquery-meanmenu', get_template_directory_uri() . '/assets/third-party/meanmenu/meanmenu.css' );
	// wp_enqueue_style( 'jquery-steps', get_template_directory_uri() . '/assets/third-party/jquery-steps/jquery.steps.css' );

	wp_enqueue_style( 'jquery-slick', get_template_directory_uri() . '/assets/third-party/slick/slick.css', '', '1.6.0' );

	wp_enqueue_style( 'ecommerce-gem-icons', get_template_directory_uri() . '/assets/third-party/et-line/css/icons.css', '', '1.0.0' );

	wp_enqueue_style( 'font-awesome', get_template_directory_uri() . '/assets/third-party/font-awesome/css/font-awesome.min.css', '', '4.7.0' );

	wp_enqueue_style( 'ecommerce-gem-style', get_stylesheet_uri() );

	wp_enqueue_script( 'ecommerce-gem-navigation', get_template_directory_uri() . '/assets/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'ecommerce-gem-skip-link-focus-fix', get_template_directory_uri() . '/assets/js/skip-link-focus-fix.js', array(), '20151215', true );

	wp_enqueue_script( 'jquery-meanmenu', get_template_directory_uri() . '/assets/third-party/meanmenu/jquery.meanmenu.js', array('jquery'), '2.0.2', true );
	// wp_enqueue_script( 'jquery-steps', get_template_directory_uri() . '/assets/third-party/jquery-steps/jquery.steps.js', array('jquery'), '1.0.2', true ); 
	wp_enqueue_script( 'jquery-slick', get_template_directory_uri() . '/assets/third-party/slick/slick.js', array('jquery'), '1.6.0', true );

	// Add script for sticky sidebar.
	$sticky_sidebar = ecommerce_gem_get_option( 'enable_sticky_sidebar' );

	if( 1 == $sticky_sidebar ){

		wp_enqueue_script( 'jquery-theia-sticky-sidebar', get_template_directory_uri() . '/assets/third-party/theia-sticky-sidebar/theia-sticky-sidebar.min.js', array('jquery'), '1.0.7', true );

	}

	wp_enqueue_script( 'ecommerce-gem-custom', get_template_directory_uri() . '/assets/js/custom.js', array( 'jquery' ), '2.1.3', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
        
        $enable_sticky = ecommerce_gem_get_option('enable_sticky');

        if (true === $enable_sticky) {

            wp_enqueue_script('jquery-sticky', get_template_directory_uri() . '/assets/third-party/sticky/jquery.sticky.js', array('jquery'), '1.0.4', true);

            wp_enqueue_script('pt-magazine-custom-sticky', get_template_directory_uri() . '/assets/third-party/sticky/custom-sticky.js', array('jquery-sticky'), '1.0.4', true);
        }
}
add_action( 'wp_enqueue_scripts', 'ecommerce_gem_scripts' );

/**
* Enqueue scripts and styles for admin >> widget page only.
*/
function ecommerce_gem_admin_scripts( $hook ) {

	if( 'widgets.php' === $hook ){

		wp_enqueue_style( 'ecommerce-gem-admin', get_template_directory_uri() . '/includes/widgets/css/admin.css', array(), '2.1.3' );

		wp_enqueue_media();

		wp_enqueue_script( 'ecommerce-gem-admin', get_template_directory_uri() . '/includes/widgets/js/admin.js', array( 'jquery' ), '2.1.3' );

	}

	if( is_admin() ) { 
	    wp_enqueue_style( 'wp-color-picker' ); 
	    wp_enqueue_script( 'wp-color-picker' );
	}

}

add_action( 'admin_enqueue_scripts', 'ecommerce_gem_admin_scripts' );

// Load main file.
require_once trailingslashit( get_template_directory() ) . '/includes/main.php';

/* Turn on wide images */
add_theme_support( 'align-wide' );

if (function_exists('acf_add_options_page')) {

    acf_add_options_page('Patch Backing');
    acf_add_options_page('Patch Border');
    acf_add_options_page('Patch Thread');

}

require_once "sss/functions.php";




function patchbazaar_slider() {

	$labels = array(
		'name'                  => _x( 'Patchbazaar Slider', 'Post Type General Name', 'text_domain' ),
		'singular_name'         => _x( 'Patchbazaar Slider', 'Post Type Singular Name', 'text_domain' ),
		'menu_name'             => __( 'Slider', 'text_domain' ),
		'name_admin_bar'        => __( 'Post Type', 'text_domain' ),
		'archives'              => __( 'Item Archives', 'text_domain' ),
		'featured_image'        => __( 'Featured Image', 'text_domain' ),
		'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
	);
	$args = array(
		'label'                 => __( 'Slider', 'text_domain' ),
		'description'           => __( 'Slider Description', 'text_domain' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'editor', 'thumbnail' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 4,
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true

	);
	register_post_type( 'patchbazaar_slider', $args );

}
add_action( 'init', 'patchbazaar_slider', 0 );