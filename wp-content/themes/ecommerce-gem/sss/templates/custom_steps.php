<?php
/**
 * Created by PhpStorm.
 * User: sarab
 * Date: 21/7/19
 * Time: 2:23 PM
 */

?>

<form id="custom-product-form" method="post" action="#" enctype="multipart/form-data">
    <h3>Determine Your Patch Size</h3>
    <section id="sstep-0">

        <h4>
        </h4>
        <p>
            Determining the size of your custom embroidered patch is simple. Input your sizing below and we will
            automatically calculate it for you and rounded up to the nearest half inch!
        </p>
        <div class="field-wrapper-container">
            <div class="field-wrapper errorDiv">
                <label for="height">Height *</label>
                <input id="height" name="productData[height]" placeholder="1.00" class="calculate_size" type="text"
                >
            </div>
            <div class="field-wrapper errorDiv">
                <label for="width">Width *</label>
                <input id="width" name="productData[width]" placeholder="1.00" class="calculate_size" type="text"
                >
            </div>
        </div>
        <input type="hidden" class="ignore" name="productData[patch_size]" id="patch_size">
        <div class="patch-size">YOUR PATCH SIZE:<span class="new_size"></span></div>
    </section>
    <h3>Choose Your Embroidery</h3>
    <section id="sstep-1">

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
            echo "<div class='errorDiv'>";
            echo '<div class="row custom-select-inner">';
            foreach ($posts as $post) {
                setup_postdata($post);
                ?>

                <div class="col-md-3 ">
                    <div class="select-wrap">
                        <input type="radio" class="required ignore" id="product<?php echo get_the_ID(); ?>"
                               name="productData[add_to_cart]"
                               value="<?php echo get_the_ID(); ?>"/>
                        <label for="product<?php echo get_the_ID(); ?>">
                            <?php
                            echo woocommerce_get_product_thumbnail();
                            echo '<span class="title">' . get_the_title() . '</span>';
                            ?>
                        </label>
                        <i class="fa fa-check-circle"></i>
                    </div>
                </div>
                <?php

            }

            echo '</div></div>';
            wp_reset_postdata();
        }
        ?>
    </section>
    <h3>Choose Your Backing</h3>
    <section id="sstep-2">
        <?php
        echo '<div class="errorDiv"><div class="row custom-select-inner">';
        if (have_rows('backing_price', 'option')): while (have_rows('backing_price', 'option')) : the_row();
            $bac_index = 1;
            if (have_rows('repeat_fields')): while (have_rows('repeat_fields')) : the_row();
                ?>

                <div class="col-md-3">
                    <div class="select-wrap">
                        <input type="radio" class="ignore" id="backing<?php echo $bac_index; ?>"
                               name="productData[backing]"
                               value="backing_<?php echo $bac_index; ?>">
                        <label for="backing<?php echo $bac_index; ?>">
                            <?php

                            $image = get_sub_field('image');

                            $size = 'thumbnail';
                            if ($image) {

                                echo wp_get_attachment_image($image['ID'], $size);

                            }
                            ?>
                            <input type="hidden" name="data[backing][backing_<?php echo $bac_index ?>][title]"
                                   value="<?php
                                   echo
                                   get_sub_field
                                   ('title')
                                   ?>"
                            />
                            <input type="hidden" name="data[backing][backing_<?php echo $bac_index ?>][price]"
                                   value="<?php
                                   echo
                                   get_sub_field
                                   ('price')
                                   ?>"
                            />

                            <input type="hidden" name="data[backing][backing_<?php echo $bac_index ?>][type]"
                                   value="<?php echo get_sub_field('price_in') ?>"/>
                            <span class="title">
                                <?php echo get_sub_field('title'); ?>
                            </span>
                        </label>
                        <i class="fa fa-check-circle"></i>
                    </div>
                </div>
                <?php
                $bac_index++;

            endwhile; endif;
        endwhile; endif;
        echo '</div></div>';
        ?>
    </section>

    <h3>Choose Your Border</h3>
    <section id="sstep-3">
        <?php
        if (have_rows('border_price', 'option')): while (have_rows('border_price', 'option')) : the_row();
            $bor_index = 1;
            ?>
            <div class="border border-type">
                <h3><?php echo get_sub_field('title'); ?></h3>
                <p><?php echo get_sub_field('description'); ?></p>
                <div class="errorDiv">
                    <div class="row custom-select-inner ">
                        <?php
                        if (have_rows('repeat_fields')): while (have_rows('repeat_fields')) : the_row();
                            ?>
                            <div class="col-md-3">
                                <div class="select-wrap">
                                    <input type="radio" class="ignore" name="productData[border]"
                                           id="border<?php echo $bor_index; ?>"
                                           value="border_<?php echo $bor_index; ?>">
                                    <label for="border<?php echo $bor_index; ?>">
                                        <?php

                                        $image = get_sub_field('image');

                                        $size = 'thumbnail';
                                        if ($image) {

                                            echo wp_get_attachment_image($image['ID'], $size);

                                        }
                                        ?>

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
                                               ?>"/>

                                        <input type="hidden" name="data[border][border_<?php echo $bor_index ?>][type]"
                                               value="<?php echo get_sub_field('price_in') ?>"/>
                                        <span class="title">
                                            <?php echo get_sub_field('title'); ?>
                                        </span>

                                    </label>
                                    <i class="fa fa-check-circle"></i>
                                </div>
                            </div>
                            <?php
                            $bor_index++;

                        endwhile; endif;
                        ?>
                    </div>
                </div>
            </div>
        <?php
        endwhile; endif;
        ?>
        <?php
        if (have_rows('loop_price', 'option')): while (have_rows('loop_price', 'option')) : the_row();
            $loop_index = 1;
            ?>
            <div class="loop border-top">

                <h3><?php echo get_sub_field('title'); ?></h3>
                <p><?php echo get_sub_field('description'); ?></p>
                <div class="errorDiv">
                    <div class="row custom-select-inner ">

                        <div class="col-md-3 ">
                            <div class="select-wrap">
                                <input type="radio" class="ignore" name="productData[loop]"
                                       id="loop<?php echo $loop_index; ?>"
                                       value="loop_<?php echo $loop_index; ?>">
                                <label for="loop<?php echo $loop_index; ?>">
                                    <?php
                                    $image = get_sub_field('image');

                                    $size = 'thumbnail';
                                    if ($image) {

                                        echo wp_get_attachment_image($image['ID'], $size);

                                    }
                                    ?>

                                    <input type="hidden" name="data[loop][loop_<?php echo $loop_index ?>][price]"
                                           value="<?php echo
                                           get_sub_field
                                           ('price')
                                           ?>"
                                    />
                                    <input type="hidden" name="data[loop][loop_<?php echo $loop_index ?>][title]"
                                           value="<?php echo
                                           get_sub_field
                                           ('title')
                                           ?>"
                                    />
                                    <input type="hidden" name="data[loop][loop_<?php echo $loop_index ?>][type]"
                                           value="<?php echo get_sub_field('price_in') ?>"/>
                                </label>
                                <i class="fa fa-check-circle"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php
        endwhile; endif;
        ?>

        <?php if (have_rows('thread_price', 'option')): ?>
        <div class="thread border-top">

            <?php while (have_rows('thread_price', 'option')) :
            the_row(); ?>
        <?php $thr_index = 1; ?>
            <h3><?php echo get_sub_field('title'); ?></h3>
            <p><?php echo get_sub_field('description'); ?></p>
            <div class="errorDiv">
                <div class="row custom-select-inner">
                    <?php
                    if (have_rows('repeat_fields')): ?>

                        <?php while (have_rows('repeat_fields')) : the_row();
                            ?>
                            <div class="col-md-3">
                                <div class="select-wrap">
                                    <input type="checkbox" class="ignore" name="productData[thread][]"
                                           id="thread<?php echo
                                           $thr_index; ?>"
                                           value="thread_<?php echo $thr_index; ?>">
                                    <label for="thread<?php echo $thr_index; ?>">
                                        <?php

                                        $image = get_sub_field('image');

                                        $size = 'thumbnail';
                                        if ($image) {

                                            echo wp_get_attachment_image($image['ID'], $size);

                                        }
                                        ?>

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
                                        <span class="title">
                                               <?php echo get_sub_field('title');
                                               ?>
                                               </span>
                                    </label>
                                    <i class="fa fa-check-circle"></i>
                                    <?php
                                    $thr_index++;
                                    ?>
                                </div>
                            </div>
                        <?php
                        endwhile;
                    endif;

                    endwhile;
                    ?>
                </div>
            </div>
            <?php endif; ?>


    </section>
    <h3>Finish</h3>
    <section id="sstep-4">
        <?php
        wp_nonce_field('pz-step-nonce');
        ?>
        <?php if (have_rows('tprice_loop', 'option')): ?>
            <div class="thread_option ">

                <?php while (have_rows('tprice_loop', 'option')) :the_row(); ?>
                    <?php $tprice_index = 1; ?>
                    <h3><?php echo get_sub_field('title'); ?></h3>

                    <div class="errorDiv">

                        <label for="tprice<?php echo $tprice_index; ?>">
                            <?php echo get_sub_field('description'); ?>

                            <input type="hidden" name="data[tprice][tprice_<?php echo $tprice_index ?>][price]"
                                   value="<?php echo
                                   get_sub_field
                                   ('thread_price')
                                   ?>"
                            />
                            <input type="hidden" name="data[tprice][tprice_<?php echo $tprice_index ?>][title]"
                                   value="Thread Price"
                            />
                            <input type="hidden" name="data[tprice][tprice_<?php echo $tprice_index ?>][type]"
                                   value="<?php echo get_sub_field('price_in') ?>"/>


                        </label>
                        <input id="tprice<?php echo $tprice_index; ?>" type="text" name="productData[tprice]"
                               class="maxthread ignore"/>
                    </div>
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

        <div class="custom-comment">
            <h2>Additional Notes</h2>
            <p>Please provide any additional details regarding your custom patch order.</p>
            <div class="form-group errorDiv">

                    <textarea placeholder="Enter here your additional details" name="productData[notes]"
                              class="form-control ignore"></textarea>

            </div>

        </div>
        <?php
        require "fileupload/imageUpload.php";
        ?>

    </section>


</form>
<form id="fileupload" action="<?php print(admin_url() . 'admin-ajax.php'); ?>" method="POST"
      enctype="multipart/form-data">
</form>
<script>
    jQuery(document).ready(function ($) {
        calculateSize(1, 1);
        var form = $("#custom-product-form");

        form.steps({
            labels: {
                finish: "Submit",
                next: "Continue",
                previous: "Back",
            },
            headerTag: "h3",
            bodyTag: "section",
            transitionEffect: "slideLeft",

            onStepChanging: function (event, currentIndex, newIndex) {

                if (currentIndex < newIndex) {
                    // To remove error styles
                    form.find(".body:eq(" + newIndex + ") label.error").remove();
                    form.find(".body:eq(" + newIndex + ") .error").removeClass("error");
                }
                if (currentIndex > newIndex) {
                    return true;
                }
                form.validate().settings.ignore = ":disabled,.ignore";

                return form.valid();
            },
            onStepChanged: function (event, currentIndex, priorIndex) {
                jQuery("#custom-product-form-p-" + currentIndex).find('input,textarea').removeClass('ignore')
                jQuery("#custom-product-form-p-" + priorIndex).find('input,textarea').addClass('ignore')

            },
            onFinishing: function (event, currentIndex) {

                return form.valid();
            },
            onFinished: function (event, currentIndex) {

                form.validate().settings.ignore = ":disabled";
                if (form.valid()) {
                    form.submit();
                }
            }
        }).validate({
            errorPlacement: function errorPlacement(error, element) {
                console.log(element)
                element.closest('.errorDiv').append(error);
            },
            rules: {
                'productData[height]': 'required',
                'productData[width]': 'required',
                'productData[add_to_cart]': 'required',
                'productData[backing]': 'required',
                'productData[border]': 'required',
                'productData[thread][]': {
                    required: true,
                    minlength: 1
                },
                // 'productData[tprice]': 'required',
                'productData[patch_size]': 'required',

            },
            messages: {
                'productData[height]': 'height is required',
                'productData[width]': 'width is required',
                'productData[add_to_cart]': 'please select a embroidery',
                'productData[backing]': 'please select a backing',
                'productData[border]': 'please select a border',
                'productData[thread][]': {
                    required: "please select a thread",
                    minlength: "please select a thread"
                },
                'productData[tprice]': 'please select thread type',
                'productData[patch_size]': 'please select height or width'
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
