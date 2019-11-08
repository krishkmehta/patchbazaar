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
        <source srcset="<?php echo get_template_directory_uri(); ?>/assets/images/staples/slider-img-mobile.jpg" media="(max-width: 991px)">
        <source srcset="<?php echo get_template_directory_uri(); ?>/assets/images/staples/header-img-1.jpg" media="(max-width: 1440px)">
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
<div id="carousel-tabs" class="tab-carousel">
    <ul>
        <li><a href="#tabs-1">Collaborative Workspace</a></li>
        <li><a href="#tabs-2">Individual Workspace</a></li>
        <li><a href="#tabs-3">Private Office</a></li>
    </ul>
    <div id="tabs-1">
    <img src="<?php echo get_template_directory_uri()?>/assets/images/staples/img-1.jpg" alt="">
    </div>
    <div id="tabs-2">
        <p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
    </div>
    <div id="tabs-3">
        <p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>
        <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
    </div>
</div>
<section class="section-row">
    <div class="wrap">
        <h2 class="section-title">Teamwork</h2>
        <p class="sub-heading">
            Furniture that emphasizes teamwork, sharing and collaboration can impact cohesion and cultivate a sense of community.
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
<div id="carousel-tabs1" class="tab-carousel">
    <ul>
        <li><a href="#cs-tab1-tabs-1">Meeting</a></li>
        <li><a href="#cs-tab1-tabs-2">Virtual Conference</a></li>
        <li><a href="#cs-tab1-tabs-3">Multipurpose</a></li>
    </ul>
    <div id="cs-tab1-tabs-1">
        <img src="<?php echo get_template_directory_uri()?>/assets/images/staples/office.jpg" alt="">
    </div>
    <div id="cs-tab1-tabs-2">
        <p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
    </div>
    <div id="cs-tab1-tabs-3">
        <p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>
        <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
    </div>
</div>
<section class="section-row">
    <div class="wrap">
        <h2 class="section-title">Connection</h2>
        <p class="sub-heading">
            Help improve the flow of information and the sharing of ideas to drive innovation everyday. 
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
         With a focus on improving workplace efficiency and fostering teamwork through innovative design, Allsteel is continually looking to improve your workplace.  

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
                Testimonial
                </h3>
                <p class="feature__desc">
                

“Staples Business Advantage exceeded our expectations... We didn't just build an office, we created a home.  And I think if you look around you really see that.”

<strong>Melissa Kennedy, Executive Assistant/Facilities Manager, Plan Canada</strong>
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
                    Featured Product
                </h3>
                <p class="feature__desc">
Syz is an innovative table series that allows users to meet at conventional table sizes and shapes, but at unconventional heights. For formal or informal meeting rooms or public spaces, these tables are available with or without power, in round, square and rectangular shapes.
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
        jQuery("#carousel-tabs,#carousel-tabs1").tabs();
    });
</script>
<?php get_footer(); ?>