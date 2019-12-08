<?php
/**
 * Created by PhpStorm.
 * User: sarab
 * Date: 21/7/19
 * Time: 11:20 AM
 */

$qty_array = array(10, 20, 50, 100, 200, 300, 500, 1000, 2000, 5000);
$args = array(
    'post_type' => 'product',
    'order'=>'asc',
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
$posts = get_posts($args);

if ($posts) {
    foreach ($posts as $post) {
        echo "<h4 class='table-title'>".get_the_title()."</h4>";
        $size_charts = get_posts(array(
            'post_type' => 'size_chart',
            'posts_per_page' => -1,
            'meta_query' => array(
                array(
                    'key' => 'size_price_products', // name of custom field
                    'value' => '"' . get_the_ID() . '"', // matches exactly "123", not just 123. This prevents a match for "1234"
                    'compare' => 'LIKE'
                )
            )
        ));



        global $post;
        $tables = array();
        if ($size_charts) {
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
        if (count($tables) > 0) {

            ?>
            <div class="table-responsive">
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
            <?php
        }


    }
}