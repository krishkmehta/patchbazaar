<?php
/**
 * Displays top navigation
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.2
 */

?>
<div class="wsmenucontainer clearfix">
    <div class="overlapblackbg"></div>
    <div class="header">
        <div class="wrapper clearfix">
            <nav id="site-navigation" class="wsmenu clearfix">
                <?php wp_nav_menu(array(

                    'theme_location' => 'top',
                    'menu_id' => 'top-menu',
                    'menu_class' => 'mobile-sub wsmenu-list',
                    'container' => 'span',
                    'walker' => new CSS_Menu_Maker_Walker()
                )); ?>

                <div class="head-right visible-mobile-7">
                    <div class="social-icons">
                        <?php if (get_field('social_icons', 'option')) : ?>

                            <ul>

                                <?php while (has_sub_field('social_icons', 'option')) : ?>

                                    <?php if (get_sub_field('image') && get_sub_field('url')) : ?>
                                        <li>
                                            <a href="<?php the_sub_field('url') ?>" title="<?php get_sub_field('title') ?>"><img alt="<?php get_sub_field('title') ?>" src="<?php the_sub_field('image') ?>"></a>
                                        </li>
                                    <?php endif; ?>

                                <?php endwhile; ?>

                            </ul>

                        <?php endif; ?>
                        <span class="have-fdbk"><a href="<?php echo get_field('accessibility_link', 'option') ?>"><?php echo get_field('accessibility_text', 'option') ?></a></span>
                    </div>


                    <?php if (get_field('show_accessibilit_icon', 'option')) : ?>
                        <div class="accss-top"><a href="<?php echo get_field('accessibility_link', 'option') ?>" target="_blank" class="icon-accessibility"></a></div>
                    <?php endif; ?>
                </div>
                <?php if ((twentyseventeen_is_frontpage() || (is_home() && is_front_page())) && has_custom_header()) : ?>
                    <a href="#content" class="menu-scroll-down"><?php echo twentyseventeen_get_svg(array('icon' => 'arrow-right')); ?>
                        <span class="screen-reader-text"><?php _e('Scroll down to content', 'twentyseventeen'); ?></span></a>
                <?php endif; ?>

        </div>
    </div>
</div>
<div class="secondary-menu-wrap wsmenu02">
    <?php wp_nav_menu(array(
        'theme_location' => 'secondary',
        'menu_id' => 'secondary-menu',
        'menu_class' => 'mobile02-sub wsmenu-list',
        'container' => 'span',
        'walker' => new CSS_Menu_Maker_Walker()
    )); ?>
</div>
</nav>