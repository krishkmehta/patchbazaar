 <div class="form-row">
    <div class="col-md-8 sideimg">
        <div class="form-quote">
            <form method="post" name="form-quote" id="form-quote">
                <?php wp_nonce_field('quote-form'); ?>
                <div class="form-row">
                    <div class="col-md-6">
                        <label for="first_name">First Name <span class="error red">*</span></label>
                        <input type="text" name="productData[first_name]" id="first_name"/>
                    </div>
                    <div class="col-md-6">
                        <label for="lastname">Last Name <span class="error red">*</span></label>
                        <input type="text" name="productData[last_name]" id="lastname"/>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-6">
                        <label for="email">Email <span class="error red">*</span></label>
                        <input type="text" name="productData[email]" id="last_name"/>
                    </div>
                    <div class="col-md-6">
                        <label for="phone">Phone <span class="error red">*</span></label>
                        <input type="text" name="productData[phone]" id="phone"/>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-6">
                        <label for="need_by_date">Need By Date <span class="error red">*</span></label>
                        <input type="text" name="productData[need_by_date]" id="need_by_date"/>
                    </div>
                    <div class="col-md-6">
                        <label for="qty">Quantity <span class="error red">*</span></label>
                        <input type="text" name="productData[qty]" id="qty"/>
                    </div>
                </div>
                <div class="field-wrapper-container">
                    <div class="field-wrapper errorDiv">
                        <label for="height">Height <span class="error red">*</span></label>
                        <input id="height" name="productData[height]" placeholder="1.00" class="calculate_size" type="text"
                        >
                    </div>
                    <div class="field-wrapper errorDiv">
                        <label for="width">Width <span class="error red">*</span></label>
                        <input id="width" name="productData[width]" placeholder="1.00" class="calculate_size" type="text"
                        >
                    </div>
                </div>
                <input type="hidden" class="" name="productData[patch_size]" id="patch_size">
                <div class="patch-size">YOUR PATCH SIZE:<span class="new_size"></span></div>

                <div class="form-row no-margin">
                    <label for="embroidery">Embroidery <span class="error red">*</span></label>
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

                    if ($posts) {
                        echo "<div class='errorDiv'>";
                        echo '<div class="row custom-select-inner">';
                        foreach ($posts as $post) {
                            setup_postdata($post);
                            ?>

                            <div class="col-md-3 ">
                                <div class="select-wrap">
                                    <input type="radio" class="required ignore" id="product<?php echo get_the_ID(); ?>"
                                           name="productData[embroidery]"
                                           value="<?php echo get_the_title() . "(" . get_the_ID() . ")"; ?>"/>
                                    <label for="product<?php echo get_the_ID(); ?>">
                                        <?php
                                        echo woocommerce_get_product_thumbnail();
                                        echo '<span class="title">' . get_the_title() . '</span>';
                                        ?>
                                    </label>
                                    <i class="fa fa-check-circle"></i>

                            echo '</div></div>';
                            wp_reset_postdata();
                        }
                        ?>
                    </div>
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
                    <input type="hidden" class="" name="productData[patch_size]" id="patch_size">
                    <div class="patch-size">YOUR PATCH SIZE:<span class="new_size"></span></div>
                    <div class="form-row">
                        <div class="col-md-6">
                            <label for="border_style">Border Style</label>
                            <select name="productData[border_style]" id="border_style">
                                <?php $choices = sss_border_style(); ?>
                                <option>Select a border</option>
                                <?php foreach ($choices as $choice): ?>
                                    <option value="<?php echo $choice['value']; ?>"><?php echo $choice['text']; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="backing_type">Backing Type</label>
                            <select name="productData[backing_type]" id="backing_type">
                                <?php $choices = sss_backing_type(); ?>
                                <option>Select a backing</option>
                                <?php foreach ($choices as $choice): ?>
                                    <option value="<?php echo $choice['value']; ?>"><?php echo $choice['text']; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                         <div class="col-md-6">
                            <?php require "fileupload/imageUpload.php" ?>
                        </div>
                        <div class="col-md-6">
                            <label for="notes">Comments</label>
                            <textarea name="productData[notes]" id="notes">
                            </textarea>
                        </div>

                    </div>
                    <div class="text-center">
                        <input type="submit" name="quote-form-submit" value="Submit"/>
                    </div>
                </form>
        </div>
    </div>
    <div class="col-md-4 sideimg">
        <img src="<?php echo get_stylesheet_directory_uri()?>/assets/images/sideimg.jpg" class="img-responsive">
    </div>
</div>
<script>
    jQuery(document).ready(function () {
        calculateSize(1, 1);
        jQuery("#form-quote").validate({
            // // errorPlacement: function errorPlacement(error, element) {
            //     console.log(element)
            //     element.closest('.errorDiv').append(error);
            // },
            rules: {
                'productData[email]': {
                    required: true,
                    email: true
                },
                'productData[first_name]': 'required',
                'productData[last_name]': 'required',
                'productData[phone]': 'required',
                'productData[need_by_date]': 'required',
                'productData[qty]': 'required',
                'productData[embroidery]': 'required',
                'productData[height]': 'required',
                'productData[width]': 'required',
                'productData[border_style]': 'required',
                'productData[backing_type]': 'required',

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
            new_size = (parseInt(pahorts[0]) + 1) + ".00";
        }

        jQuery(".new_size").html(new_size + "\"");
        jQuery("#patch_size").val(new_size);

    }

</script>