<?php
/**
 * Created by PhpStorm.
 * User: sarab
 * Date: 21/7/19
 * Time: 11:20 AM
 */
extract(shortcode_atts(array(
    'patchcat' => 'hand',
), $satts));

$qty_array = array(10, 20, 50, 100, 200, 300, 500, 1000, 2000, 5000);
$args = array(
    'post_type' => 'product',
    'order' => 'asc',
    'posts_per_page' => -1,
    'tax_query' => array(
        array(
            'taxonomy' => 'product_cat',
            'field' => 'term_id', //This is optional, as it defaults to 'term_id'
            'terms' => 20,
            'operator' => 'IN' // Possible values are 'IN', 'NOT IN', 'AND'.
        ),
        array(
            'taxonomy' => 'product_visibility',
            'field' => 'slug',
            'terms' => 'exclude-from-catalog', // Possibly 'exclude-from-search' too
            'operator' => 'NOT IN'
        )
    )
);
$custom_query = new WP_Query($args);

if ($custom_query->have_posts()) {
    ?>

    <div id="horizontalTab">
        <?php
        $content_array = array();
        $index = 1;
        ?>
        <ul>
            <?php while ($custom_query->have_posts()) :$custom_query->the_post(); ?>

                <?php
                $title = get_the_title();
                $size_charts = get_posts(array(
                    'post_type' => 'size_chart',
                    'posts_per_page' => -1,
                    'meta_query' => array(
                        array(
                            'key' => 'size_price_products', // name of custom field
                            'value' => '"' . get_the_ID() . '"', // matches exactly "123", not just 123. This prevents a
                            'compare' => 'LIKE'
                        ),
                        array(
                            'key' => 'size_price_patch__category', // name of custom field
                            'value' =>  $patchcat, // matches exactly "123", not just 123. This prevents a
                           // 'compare' => 'LIKE'
                        )
                    )
                ));

                $tables = array();

                if (count($size_charts) > 0) {
                    global $post;
                    foreach ($size_charts as $post) {

                        setup_postdata($post);
                        $size_group = get_field('size_price');
                        $size = $size_group['size'];
                        foreach ($size_group['price_repeater'] as $prices) {
                            $tables[$size][$prices['qty']] = $prices['price'];
                        }

                    }
                    wp_reset_postdata();
                }

                ?>
                <?php if (count($tables) > 0): ?>
                    <li>
                        <a href="#tab-<?php echo $index; ?>">
                            <h4 class='table-title'>

                                <?php echo $title; ?>
                                <span class="fa">
                            </h4>
                        </a>
                    </li>
                    <?php
                    $content_array[$index] = $tables;
                    ?>
                    <?php $index++; ?>

                <?php endif; ?>

            <?php endwhile; ?>
        </ul>

        <?php foreach ($content_array as $key => $tables): ?>
            <div id="tab-<?php echo $key ?>" class="table-responsive">
                <table class="table table-condensed custom-tables">
                    <thead>
                    <tr>
                        <td>Size</td>
                        <?php
                        foreach ($qty_array as $qty) {
                            echo "<td>{$qty}</td>";
                        }
                        ?>
                    </tr>
                    </thead>

                    <tbody>

                    <?php

                    foreach ($tables as $key => $table) {
                        echo "<tr>";
                        echo "<td>{$key}\"</td>";
                        foreach ($qty_array as $qty) {

                            echo "<td>" . (isset($table[$qty]) ? $table[$qty] : '-') . "</td>";
                        }

                        echo "</tr>";
                    }

                    ?>
                    </tr>
                    </tbody>
                </table>
            </div>

        <?php endforeach; ?>
    </div>
    <?php wp_reset_query() ?>
    <script src="<?php echo get_stylesheet_directory_uri() ?>/assets/third-party/accordionJs/js/jquery.responsiveTabs.js"></script>
    <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri() ?>/assets/third-party/accordionJs/css/responsive-tabs.css">

    <script type="text/javascript">
        jQuery(document).ready(function () {
            var $tabs = jQuery('#horizontalTab');
            $tabs.responsiveTabs({
                rotate: false,
                startCollapsed: 'accordion',
                collapsible: 'accordion',
                setHash: true,

            });
        });
    </script>
<?php } ?>