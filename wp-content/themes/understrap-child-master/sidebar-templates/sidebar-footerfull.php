<?php
/**
 * Sidebar setup for footer full.
 *
 * @package understrap
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}

$container = get_theme_mod( 'understrap_container_type' );

?>

<?php if ( is_active_sidebar( 'footerfull' ) ) : ?>

	<!-- ******************* The Footer Full-width Widget Area ******************* -->

	<div class="wrapper" id="wrapper-footer-full">

		<div class="<?php echo esc_attr( $container ); ?>" id="footer-full-content" tabindex="-1">

			<div class="row">

				<?php dynamic_sidebar( 'footerfull' ); ?>

			</div>
			<ul class="social-media">
				<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
				<li><a href="#"><i class="fa fa-instagram"></i></a></li>
			</ul>
			<div class="footer-address text-center"> 
				<ul>
					<li>Guru vihar,Ludhiana 141006</li>
					<li>79737-94142</li>
					<li>best@patchbazaar.com</li>
				</ul>
			</div>
		</div>
		<div class="copyright-wrap">
			<div class="container">
				
				<?php if ( is_active_sidebar( 'footer-privacy' ) ) : ?>
					<?php dynamic_sidebar( 'footer-privacy' ); ?>
				<?php endif; ?>

				<ul class="float-md-left">
					<li><a href="#">Privacy Policy</a></li>
					<li><a href="#">Terms and Conditions</a></li>
					<li><a href="#">Cookies</a></li>
				</ul>
				<div class="float-md-right">
					Copyright © 2019 Patchbazaar. All Rights Reserved
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div><!-- #wrapper-footer-full -->

<?php endif; ?>
