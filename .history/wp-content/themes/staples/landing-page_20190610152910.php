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
	<img src="<?php echo get_template_directory_uri(); ?>/assets/images/header-img.jpg">
	<div class="wrap">
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
<div class="wrap">
</div>
<?php get_footer();?>
