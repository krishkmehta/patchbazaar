<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 * Template Name: Landing Template
 */

?>
<?php get_header(); ?>
<div class="banner-img-wrap">
<picture>
	<source srcset="<?php echo get_template_directory_uri(); ?>/assets/images/staples/header-img-1.jpg" media="(min-width: 991px)">
	<source srcset="<?php echo get_template_directory_uri(); ?>/assets/images/staples/slider-img-mobile.jpg" media="(max-width: 767px)">
	<img src="<?php echo get_template_directory_uri(); ?>/assets/images/header-img.jpg" alt="">
</picture>
	
	<div class="wrap">
		<div class="banner__content-wrap">
			<div class="banner__content">
				<h1 class="banner__title">
					Welcome to work.
				</h1>
				<p class="banner__desc">
					Great things happend when you work with the people you know.
				</p>
				<a class="button button-primary" href="#">Explore the Spaces</a>
			</div>
		</div>
	</div>
</div>
<?php get_footer();?>
