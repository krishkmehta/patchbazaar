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
 * Template Name: Landing Template 2
 */

?>
<?php get_header(); ?>
<div class="banner-img-wrap" style="height:600px;
background: url('<?php echo get_template_directory_uri();?>/assets/images/header-img.jpg')">
     <div class="wrap">
        <div class="banner__content-wrap">
            <div class="banner__content">
                <h1 class="banner__title">
                Your Vision. Our Expertise.
                </h1>
                <p class="banner__desc">
                Furniture and design solutions for any business.
                </p>
                <a class="button button-primary" href="#">Explore the Spaces</a>
            </div>
        </div>
    </div>
</div>
<section class="section-row">
    <div class="wrap">
        <div class="col-md-6">
                <img src="<?php echo get_template_directory_uri() ?>/assets/images/staples/global.jpg" alt="Global">
        </div>
        <div class="col-md-6"></div>
    </div>
</section> 
<section class="section-row">
    <div class="wrap">
        <h2 class="section-title">Who we are</h2>
        <p class="sub-heading">
Staples Business Advantage TM is the leading business supplier in Canada,
providing customers with a complete assortment of products and services,
including office supplies,technology products,facility solutions,furniture,
and business services.As the business-to-business division of Staples,
Staples Business Advantage works with companies of 20 or more employees to develop customized programs and to provide dedicated account management to meet the needs of any business.
        </p>
        <div class="row feature__section">
            <div class="col-md-4">
                <div class="feature__img">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/staples/global.jpg" alt="Global">
                </div>
                <h3 class="feature__title">
                    Vendor Spotlight
                </h3>
                <p class="feature__desc">
                    Global is an industry leader in manufacturing furniture for a variety of markets, offering a comprehensive portfolio that are designed and engineered to meet the changing needs of of the Workplace, Education and Healthcare sectors.
                </p>
                <a href="#" class="feature__learn-more">
                    Learn More
                </a>
            </div>
            <div class="col-md-4">
                <div class="feature__img">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/staples/joe-fresh.jpg" alt="Joe Fresh">
                </div>
                <h3 class="feature__title">
                    Vendor Spotlight
                </h3>
                <p class="feature__desc">
                    Global is an industry leader in manufacturing furniture for a variety of markets, offering a comprehensive portfolio that are designed and engineered to meet the changing needs of of the Workplace, Education and Healthcare sectors.
                </p>
                <a href="#" class="feature__learn-more">
                    Learn More
                </a>
            </div>
            <div class="col-md-4">
                <div class="feature__img">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/staples/office-chair.jpg" alt="Staples Office Chair">
                </div>
                <h3 class="feature__title">
                    Vendor Spotlight
                </h3>
                <p class="feature__desc">
                    Global is an industry leader in manufacturing furniture for a variety of markets, offering a comprehensive portfolio that are designed and engineered to meet the changing needs of of the Workplace, Education and Healthcare sectors.
                </p>
                <a href="#" class="feature__learn-more">
                    Learn More
                </a>
            </div>
        </div>
    </div>
</section>
<section class="section-row feature-section-2 filled-section">
    <div class="wrap">
        <h2 class="section-title">Discover More</h2>
        <p class="sub-heading">
            Explore other spaces by Staples Business Advantage.
        </p>
        <div class="row feature__section">
            <div class="col-md-3">
                <div class="feature__img">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/staples/Education.jpg" alt="Education">
                </div>
                <h3 class="feature__title">
                    Wellness
                </h3>
            </div>
            <div class="col-md-3">
                <div class="feature__img">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/staples/Wellness.jpg" alt="Wellness">
                </div>
                <h3 class="feature__title">
                    Education
                </h3>
            </div>
            <div class="col-md-3">
                <div class="feature__img">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/staples/Emerging.jpg" alt="Emerging">
                </div>
                <h3 class="feature__title">
                    Emerging
                </h3>
            </div>
            <div class="col-md-3">
                <div class="feature__img">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/staples/Overview.jpg" alt="Overview">
                </div>
                <h3 class="feature__title">
                    Overview
                </h3>
            </div>
        </div>
    </div>
</section>
<section class="section-row dark-section filled-section contact-section">
    <div class="wrap">
        <div class="inner-wrap">
            <h2 class="section-title">Free Consultation</h2>
            <p class="sub-heading">
                Speak to a Furniture Expert for professional, personalized help.
            </p>
            <a class="button button-primary button-rounded" href="#">Explore the Spaces</a>
        </div>
    </div>
</section>
<script>
    jQuery(function() {
        jQuery("#carousel-tabs").tabs();
    });
</script>
<?php get_footer(); ?>