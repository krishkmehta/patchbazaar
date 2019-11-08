<?php
/**
 * Created by PhpStorm.
 * User: sarab
 * Date: 21/7/19
 * Time: 2:23 PM
 */

?>

<form id="custom-product-form" method="post" action="#">
    <div>

        <h3>Determine Your Patch Size</h3>
        <section>
            <h4>
            </h4>
            <p>
                Determining the size of your custom embroidered patch is simple. Input your sizing below and we will
                automatically calculate it for you and rounded up to the nearest half inch!
            </p>

            <label for="height">Height *</label>
            <input id="height" name="productData[height]" placeholder="1.00" class="calculate_size" type="text"
                   class="required">
            <label for="width">Width *</label>
            <input id="width" name="productData[width]" placeholder="1.00" class="calculate_size" type="text"
                   class="required">
            <input type="hidden" name="productData[patch_size]" id="patch_size">
            <span>YOUR PATCH SIZE:<span class="new_size"></span></span>
        </section>
        <h3>Choose Your Embroidery</h3>
        <section>
            <p>
                The size and design of your patch determines the patch’s embroidery percentage. On a 50% embroidered
                patch, at least half of the patch’s twill backing is visible. This is good for simple, text-only
                designs, since the large amount open space is great for showcasing your message. A 75% embroidered patch
                allows larger, more intricate artwork, and covers more of the twill. For really intricate designs and
                logos, the 100% embroidered patch covers the entire backing with embroidery, leaving none of the twill
                visible. This style offers the most detail possible on a patch.
            </p>
            <?php
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
            $posts = get_posts($args);
            //    debug($posts);
            if ($posts) {
                foreach ($posts as $post) {
                    setup_postdata($post);
                    ?>
                    <label for="product<?php echo get_the_ID(); ?>">
                        <input type="radio" id="product<?php echo get_the_ID(); ?>" name="productData[add_to_cart]"
                               value="<?php echo get_the_ID(); ?>"/>
                        <?php
                        echo woocommerce_get_product_thumbnail();
                        echo get_the_title();
                        ?>
                    </label>
                    <?php

                }

                wp_reset_postdata();

            }
            ?>
        </section>
        <h3>Choose Your Backing</h3>
        <section>
            <?php
            if (have_rows('backing_price', 'option')): while (have_rows('backing_price', 'option')) : the_row();
                $bac_index = 1;
                if (have_rows('repeat_fields')): while (have_rows('repeat_fields')) : the_row();
                    ?>
                    <label for="backing<?php echo $bac_index; ?>">
                        <?php
                        echo get_sub_field('title');
                        $image = get_sub_field('image');

                        $size = 'thumbnail';
                        if ($image) {

                            echo wp_get_attachment_image($image['ID'], $size);

                        }
                        ?>
                        <input type="radio" id="backing<?php echo $bac_index; ?>" name="productData[backing]"
                               value="backing_<?php echo $bac_index; ?>">
                        <input type="hidden" name="data[backing][backing_<?php echo $bac_index ?>][title]" value="<?php
                        echo
                        get_sub_field
                        ('title')
                        ?>"
                        />
                        <input type="hidden" name="data[backing][backing_<?php echo $bac_index ?>][price]" value="<?php
                        echo
                        get_sub_field
                        ('price')
                        ?>"
                        />

                        <input type="hidden" name="data[backing][backing_<?php echo $bac_index ?>][type]"
                               value="<?php echo get_sub_field('price_in') ?>"/>
                    </label>
                    <?php
                    $bac_index++;

                endwhile; endif;
            endwhile; endif;
            ?>
        </section>

        <h3>Choose Your Border</h3>
        <section>
            <?php
            if (have_rows('border_price', 'option')): while (have_rows('border_price', 'option')) : the_row();
                $bor_index = 1;
                ?>
                <div class="border">
                    <h3><?php echo get_sub_field('title'); ?></h3>
                    <p><?php echo get_sub_field('description'); ?></p>

                    <?php
                    if (have_rows('repeat_fields')): while (have_rows('repeat_fields')) : the_row();
                        ?>
                        <label for="border<?php echo $bor_index; ?>">
                            <?php
                            echo get_sub_field('title');
                            $image = get_sub_field('image');

                            $size = 'thumbnail';
                            if ($image) {

                                echo wp_get_attachment_image($image['ID'], $size);

                            }
                            ?>
                            <input type="radio" name="productData[border]" id="border<?php echo $bor_index; ?>"
                                   value="border_<?php echo $bor_index; ?>">
                            <input type="hidden" name="data[border][border_<?php echo $bor_index ?>][price]"
                                   value="<?php echo
                            get_sub_field
                            ('price')
                            ?>"
                            />
                            <input type="hidden" name="data[border][border_<?php echo $bor_index ?>][title]"
                                   value="<?php echo
                                   get_sub_field
                                   ('title')
                                   ?>"

                            <input type="hidden" name="data[border][border_<?php echo $bor_index ?>][type]"
                                   value="<?php echo get_sub_field('price_in') ?>"/>
                        </label>
                        <?php
                        $bor_index++;

                    endwhile; endif;
                    ?>
                </div>
            <?php
            endwhile; endif;
            ?>
            <?php
            if (have_rows('loop_price', 'option')): while (have_rows('loop_price', 'option')) : the_row();
                $loop_index = 1;
                ?>
                <div class="loop">
                    <h3><?php echo get_sub_field('title'); ?></h3>
                    <p><?php echo get_sub_field('description'); ?></p>
                    <label for="loop<?php echo $loop_index; ?>">
                        <?php
                        $image = get_sub_field('image');

                        $size = 'thumbnail';
                        if ($image) {

                            echo wp_get_attachment_image($image['ID'], $size);

                        }
                        ?>
                        <input type="radio" name="productData[loop]" id="loop<?php echo $loop_index; ?>"
                               value="loop_<?php echo $loop_index; ?>">
                        <input type="hidden" name="data[loop][loop_<?php echo $loop_index ?>][price]" value="<?php echo
                        get_sub_field
                        ('price')
                        ?>"
                        />
                        <input type="hidden" name="data[loop][loop_<?php echo $loop_index ?>][title]" value="<?php echo
                        get_sub_field
                        ('title')
                        ?>"
                        />
                        <input type="hidden" name="data[loop][loop_<?php echo $loop_index ?>][type]"
                               value="<?php echo get_sub_field('price_in') ?>"/>
                    </label>
                    <?php


                    ?>
                </div>
            <?php
            endwhile; endif;
            ?>

            <?php if (have_rows('thread_price', 'option')): ?>
                <div class="thread">

                    <?php while (have_rows('thread_price', 'option')) :the_row(); ?>
                        <?php $thr_index = 1; ?>
                        <h3><?php echo get_sub_field('title'); ?></h3>
                        <p><?php echo get_sub_field('description'); ?></p>

                        <?php
                        if (have_rows('repeat_fields')):
                            while (have_rows('repeat_fields')) : the_row();
                                ?>
                                <label for="thread<?php echo $thr_index; ?>">
                                    <?php
                                    echo get_sub_field('title');
                                    $image = get_sub_field('image');

                                    $size = 'thumbnail';
                                    if ($image) {

                                        echo wp_get_attachment_image($image['ID'], $size);

                                    }
                                    ?>
                                    <input type="checkbox" name="productData[thread][]" id="thread<?php echo
                                    $thr_index; ?>"
                                           value="thread_<?php echo $thr_index; ?>">
                                    <input type="hidden" name="data[thread][thread_<?php echo $thr_index ?>][price]"
                                           value="<?php echo
                                           get_sub_field
                                           ('price')
                                           ?>"
                                    />
                                    <input type="hidden" name="data[thread][thread_<?php echo $thr_index ?>][title]"
                                           value="<?php echo
                                           get_sub_field
                                           ('title')
                                           ?>"
                                    />
                                    <input type="hidden" name="data[thread][thread_<?php echo $thr_index ?>][type]"
                                           value="<?php echo get_sub_field('price_in') ?>"/>
                                </label>
                                <?php
                                $thr_index++;


                            endwhile;
                        endif;

                    endwhile;
                    ?>
                </div>
            <?php endif; ?>

            <?php if (have_rows('tprice_loop', 'option')): ?>
                <div class="thread_option">

                    <?php while (have_rows('tprice_loop', 'option')) :the_row(); ?>
                        <?php $tprice_index = 1; ?>
                        <h3><?php echo get_sub_field('title'); ?></h3>


                        <label for="tprice<?php echo $tprice_index; ?>">
                            <?php echo get_sub_field('description'); ?>

                            <input type="hidden" name="data[tprice][tprice_<?php echo $tprice_index ?>][price]"
                                   value="<?php echo
                                   get_sub_field
                                   ('thread_price')
                                   ?>"
                            />
                            <input id="tprice<?php echo $tprice_index; ?>" type="text" name="productData[tprice]"
                                   class="maxthread"/>
                        </label>
                        <script>
                            var max = "<?php echo(get_sub_field('max_thread') ? get_sub_field('max_thread') : 1); ?>";
                            jQuery(document).ready(function () {
                                jQuery("#tprice<?php echo $tprice_index; ?>").on('blur', function () {
                                    var valu = jQuery(this).val();
                                    setv(valu, this, 0, max)

                                });
                                jQuery("#tprice<?php echo $tprice_index; ?>").on('focus', function () {
                                    var valu = jQuery(this).val();
                                    setv(valu, this, 0, max)
                                });
                            });

                            function setv(valu, obj, value, max) {
                                max = parseInt(max);
                                if (valu == 'undefined' || valu == '') {
                                    jQuery(obj).val(value);
                                }
                                valu = parseInt(valu);
                                if (valu > max) {
                                    jQuery(obj).val(max);
                                }
                            }
                        </script>
                    <?php
                    endwhile;
                    ?>
                </div>
            <?php endif; ?>

        </section>
        <h3>Finish</h3>
        <section>
            <?php
            wp_nonce_field('pz-step-nonce');
            ?>
            <textarea name="productData[comments]" ></textarea>
            <input type="submit" />
        </section>

    </div>
</form>
<script>
    jQuery(document).ready(function ($) {
        calculateSize(1, 1);
        var form = $("#custom-product-form");
        form.validate({
            errorPlacement: function errorPlacement(error, element) {
                element.before(error);
            }
        });
        form.children("div").steps({
            headerTag: "h3",
            bodyTag: "section",
            transitionEffect: "slideLeft",

            onStepChanging: function (event, currentIndex, newIndex) {
                form.validate().settings.ignore = ":disabled,:hidden";
                return form.valid();
            },
            onFinishing: function (event, currentIndex) {
                form.validate().settings.ignore = ":disabled";
                return form.valid();
            },
            onFinished: function (event, currentIndex) {
                alert("Submitted!");
            }
        });

        jQuery('.calculate_size').keyup(function () {

            var height = getSizeValue(jQuery("#height"));
            var width = getSizeValue(jQuery("#width"));
            console.log(height);
            calculateSize(parseFloat(height), parseFloat(width))
        })
        jQuery('#height').blur(function () {

            var height = getSizeValue(jQuery(this), true);
            var width = getSizeValue(jQuery("#width"), true);
            jQuery(this).val(height);
            calculateSize(parseFloat(height), parseFloat(width))
        })
        jQuery('#width').blur(function () {

            var height = getSizeValue(jQuery("#height"), true);
            var width = getSizeValue(jQuery(this), true);
            jQuery(this).val(width);
            calculateSize(parseFloat(height), parseFloat(width))
        })
    })

    function getSizeValue(ele, check) {
        var val = parseFloat(ele.val());

        var new_v = 1.00;
        if (isNaN(val) || val == 'undefined') {
            val = 1.00;
        }
        if (val < 1 && check) {
            val = new_v;
        } else if (val > 7 && check) {
            val = 7.00;
        }

        return val.toFixed(2);

    }

    function calculateSize(h, w) {
        var new_size = '';
        if (h < 1) {
            h = 1.00;
        }
        if (w < 1) {
            w = 1.00;
        }
        if (h > 7) {
            h = 7.00;
        }
        if (w > 7) {
            w = 7.00;
        }
        var size = parseFloat((w + h) / 2).toFixed(2);
        var cs = size + "";
        var parts = cs.split('.');

        var precsize = parseInt(parts[1]);
        if (precsize < 1) {
            new_size = parts[0] + ".00";
        } else if (precsize < 50 && precsize > 0) {
            new_size = parts[0] + ".50";
        } else {
            new_size = (parseInt(parts[0]) + 1) + ".00";
        }

        jQuery(".new_size").html(new_size + "\"");
        jQuery("#patch_size").val(new_size);

    }

</script>
