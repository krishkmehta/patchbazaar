<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Staples
 * @since 1.0
 * @version 1.0
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js no-svg">
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="//gmpg.org/xfn/11">
    <link rel="stylesheet" href="<?php echo bloginfo('template_url') ?>/assets/css/style.css" type="text/css">
    <?php wp_head(); ?>
    <script type="text/javascript" src="<?php echo bloginfo('template_url') ?>/assets/js/main.js"></script>
</head>

<body <?php body_class(); ?>>
<!-- Google Tag Manager -->

<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':

        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],

        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=

        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);

    })(window,document,'script','dataLayer','GTM-TVCFKX2');</script>

<!-- End Google Tag Manager -->

<!-- Google Tag Manager (noscript) -->

<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TVCFKX2"

                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>

<!-- End Google Tag Manager (noscript) -->
<?php
global $_COOKIE;
if (is_active_sidebar('sidebar-top')) { ?>
    <div class="widget-column topbar-msgbar">

        <div id="top-sidebar-add" style="<?php echo $_COOKIE['closetop']=='1'?'display: none': ''; ?>">
            <?php dynamic_sidebar('sidebar-top'); ?>
        </div>
        <span class="hideshow-button icon-top-toggle <?php echo $_COOKIE['closetop']?'inactive': ''; ?>" data-toggleid="top-sidebar-add"></span>

    </div>
<?php }
?>
<div id="page" class="site">
    <a class="skip-link screen-reader-text" href="#content"><?php _e('Skip to content', 'Staples'); ?></a>

    <header id="masthead" class="site-header" role="banner">

        <?php get_template_part('template-parts/header/header', 'image'); ?>

        <?php if (has_nav_menu('top')) : ?>
            <div class="navigation-top">
                <div class="wrap">
                    <?php get_template_part('template-parts/navigation/navigation', 'top'); ?>
                </div><!-- .wrap -->
            </div><!-- .navigation-top -->
        <?php endif; ?>

    </header><!-- #masthead -->

    <?php

    /*
     * If a regular post or page, and not the front page, show the featured image.
     * Using get_queried_object_id() here since the $post global may not be set before a call to the_post().
     */
    if ((is_single() || (is_page() && !twentyseventeen_is_frontpage())) && has_post_thumbnail(get_queried_object_id())) :
        echo '<div class="single-featured-image-header">';
        echo get_the_post_thumbnail(get_queried_object_id(), 'twentyseventeen-featured-image');
        echo '</div><!-- .single-featured-image-header -->';
    endif;
    ?>

    <div class="site-content-contain">
        <div id="content" class="site-content">
