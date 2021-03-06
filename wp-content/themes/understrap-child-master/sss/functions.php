<?php
/**
 * Created by PhpStorm.
 * User: sarab
 * Date: 21/7/19
 * Time: 11:18 AM
 */


add_action('init', 'sss_register_post');

function sss_register_post()
{

    $args = array(
        'public' => true,
        'label' => __('Books', 'textdomain'),
        'menu_icon' => 'dashicons-book',
    );
    register_post_type('book', $args);
    register_post_type(
        'size_chart',
        array(
            'labels' => array(
                'name' => __('Size Charts', 'sss'),
                'singular_name' => __('Size Chart', 'sss'),
                'all_items' => __('All Size Charts', 'sss'),
                'menu_name' => _x('Size Charts', 'Admin menu name', 'sss'),
                'add_new' => __('Add New', 'sss'),
                'add_new_item' => __('Add new size chart', 'sss'),
                'edit' => __('Edit', 'sss'),
                'edit_item' => __('Edit size chart', 'sss'),
                'new_item' => __('New size chart', 'sss'),
                'view_item' => __('View size chart', 'sss'),
                'view_items' => __('View size charts', 'sss'),
                'search_items' => __('Search size charts', 'sss'),
                'not_found' => __('No size charts found', 'sss'),
                'not_found_in_trash' => __('No size charts found in trash', 'sss'),
                'parent' => __('Parent size chart', 'sss'),
                'featured_image' => __('Size Chart image', 'sss'),
                'set_featured_image' => __('Set size chart image', 'sss'),
                'remove_featured_image' => __('Remove size chart image', 'sss'),
                'use_featured_image' => __('Use as size chart image', 'sss'),
                'insert_into_item' => __('Insert into size chart', 'sss'),
                'uploaded_to_this_item' => __('Uploaded to this size chart', 'sss'),
                'filter_items_list' => __('Filter size charts', 'sss'),
                'items_list_navigation' => __('Size Charts navigation', 'sss'),
                'items_list' => __('Size Charts list', 'sss'),
            ),
            'public' => true,
            'description' => __('This is where you can add new size charts to your product.', 'sss'),
            'query_var' => true,
            'has_archive' => false,
        )

    );
}

add_filter('acf/validate_value/key=field_5d29ec1e0ad2e', 'sss_unique_repeater_sub_field', 20, 4);

function sss_unique_repeater_sub_field($valid, $value, $field, $input)
{
    if (!$valid) {
        return $valid;
    }

    // get list of array indexes from $input
    // [ <= this fixes my IDE, it has problems with unmatched brackets
    preg_match_all('/\[([^\]]+)\]/', $input, $matches);
    if (!count($matches[1])) {
        // this should actually never happen
        return $valid;
    }
    $matches = $matches[1];

    // walk the acf input to find the repeater and current row
    $array = $_POST['acf'];

    $repeater_key = false;
    $repeater_value = false;
    $row_key = false;
    $row_value = false;
    $field_key = false;
    $field_value = false;

    for ($i = 0; $i < count($matches); $i++) {
        if (isset($array[$matches[$i]])) {
            $repeater_key = $row_key;
            $repeater_value = $row_value;
            $row_key = $field_key;
            $row_value = $field_value;
            $field_key = $matches[$i];
            $field_value = $array[$matches[$i]];
            if ($field_key == $field['key']) {
                break;
            }
            $array = $array[$matches[$i]];
        }
    }

    if (!$repeater_key) {
        // this should not happen, but better safe than sorry
        return $valid;
    }

    // look for duplicate values in the repeater
    foreach ($repeater_value as $index => $row) {
        if ($index != $row_key && $row[$field_key] == $value) {
            // this is a different row with the same value
            $valid = 'this value is not unique';
            break;
        }
    }

    return $valid;
}

add_shortcode("size_charts", 'sss_size_charts');

function sss_size_charts()
{
    return get_template_part('sss/templates/size_charts');
}


add_action('wp_enqueue_scripts', 'sss_enqueue_scripts');
function sss_enqueue_scripts()
{
    wp_register_style('jquery-step', get_stylesheet_directory_uri() . "/css/jquery.steps.css");

    wp_register_script('jquery-step', get_stylesheet_directory_uri() . "/js/jquery.steps.js", 'jquery');
    wp_register_script('jquery-validate', get_stylesheet_directory_uri() . "/js/jquery.validate.min.js", 'jquery');
    wp_register_script('jquery-mask', get_stylesheet_directory_uri() . "/js/jquery.mask.min.js", 'jquery');

    wp_enqueue_script('jquery-validate');
    wp_enqueue_script('jquery-step');
    wp_enqueue_script('jquery-mask');
    wp_enqueue_style('jquery-step');

}

add_shortcode('custom_steps', 'sss_custom_steps');

function sss_custom_steps()
{
    return get_template_part('sss/templates/custom_steps');
}


function debug($text, $exit = false)
{
    echo "<pre>";
    print_r($text);
    echo "</pre>";
    if ($exit) {
        exit;
    }
}

add_action('wp_loaded', 'km_add_to_cart');
function km_add_to_cart()
{
    @session_start();


    if (isset($_POST['_wpnonce']) && wp_verify_nonce($_POST['_wpnonce'], 'pz-step-nonce')) {


        foreach ($_POST['productData'] as $key => $value) {
            if ($key == 'thread') {
                foreach ($value as $k => $v) {
                    $_SESSION['pb_extra_data'][$key][$k] = $_POST['data'][$key][$v];
                }
            } elseif ($key == 'tprice') {
                $_SESSION['pb_extra_data'][$key]['price'] = $_POST['data'][$key]['tprice_1']['price'];
                $_SESSION['pb_extra_data'][$key]['type'] = $_POST['data'][$key]['tprice_1']['type'];
                $_SESSION['pb_extra_data'][$key]['value'] = $value;
            } elseif (isset($_POST['data'][$key][$value])) {
                $_SESSION['pb_extra_data'][$key] = $_POST['data'][$key][$value];
            } else {
                $_SESSION['pb_extra_data'][$key] = $value;
            }

            $posts = new  WP_Query(
                array(
                    'post_type' => 'size_chart',
                    'posts_per_page' => 1,
                    'meta_key' => 'size_price_size',
                    'orderby' => 'meta_value',
                    'order' => 'DESC',
                    'meta_query' => array(
                        array(
                            'key' => 'size_price_size',
                            'compare' => '<=',
                            'value' => floatval($_POST['productData']['patch_size']),

                        ),
                        array(
                            'key' => 'size_price_products', // name of custom field
                            'value' => '"' . $_POST['productData']['add_to_cart'] . '"', // matches exactly
                            // "123", not just
                            'compare' => 'LIKE'
                        )
                    )
                )
            );

            if ($posts->have_posts()) {

                while ($posts->have_posts()):$posts->the_post();
                    $fields = get_field('size_price');
                    $_SESSION['pb_extra_data']['size_chart'] = $fields['price_repeater'];
                endwhile;
                wp_reset_postdata();
            }
        }


        add_to_cart_logic();
    }

}

function add_to_cart_logic()
{
    global $woocommerce;
    @session_start();
    $woocommerce->cart->get_cart();
    $data = $woocommerce->cart->add_to_cart($_SESSION['pb_extra_data']['add_to_cart']);


    $cart_data = $woocommerce->cart->get_cart_item($data);


    $product_id = ($_SESSION['pb_extra_data']['add_to_cart']);
    $product = wc_get_product($product_id);
    $or_price = 0;
    $percent_price = 0;
    $main_price = floatval($product->get_price());
    $main_key = array('backing', 'border', 'loop', 'thread', 'tprice', 'patch_size');

    foreach ($_SESSION['pb_extra_data'] as $key => $values) {
        if (is_array($values) && in_array($key, $main_key)) {
            if ($key == 'thread') {
                foreach ($values as $v) {
                    if (isset($v['type']) && $v['type'] != 'flat') {
                        $percent_price = $percent_price + floatval($v['price']);

                    } else {
                        $or_price = $or_price + floatval($v['price']);
                    }
                }
            } elseif ($key == 'tprice') {
                if (isset($values['type']) && ($values['type'] != 'flat' || $values['type'] != 'Flat')) {
                    $percent_price = $percent_price + (floatval($values['price']) * $values['value']);
                } else {
                    $or_price = $or_price + (floatval($values['price']) * $values['value']);
                }
            } else {
                if (isset($values['type']) && $values['type'] != 'flat') {
                    $percent_price = $percent_price + floatval($values['price']);

                } else {
                    $or_price = $or_price + floatval($values['price']);
                }
            }
        } elseif ($key == 'size_chart') {

            $size_price = floatval(SGetSizePrice($values, $cart_data['quantity']));

            WC()->session->set($data . 'sizeprice', $size_price);
            $or_price = $or_price + $size_price;


        }
    }


    $total_price = floatval($or_price + $main_price);

    $total_percent_price = 0;
    if ($percent_price > 0) {
        $total_percent_price = (($total_price * $percent_price) / 100);
    }

    WC()->session->set($data . 'price', $total_price);

    $total_price = floatval($total_percent_price + $total_price);

    WC()->session->set($data . 'percent_price', $percent_price);

    WC()->session->set_customer_session_cookie(true);
    unset($_SESSION['pb_extra_data']);
    wp_redirect(wc_get_cart_url());

    die;
}


add_filter('woocommerce_add_cart_item_data', 'pb_add_item_data', 1, 10);
function pb_add_item_data($cart_item_data, $product_id, $variation_id)
{
    global $woocommerce;
    @session_start();
    $new_value = array();
    $extra_key = array('backing', 'border', 'loop', 'thread', 'tprice', 'size_chart');
    $main_key = array('height', 'width', 'patch_size', 'notes');

    foreach ($_SESSION['pb_extra_data'] as $key => $value) {
        if (in_array($key, $main_key)) {
            $new_value['main'][$key] = $value;
        } elseif (in_array($key, $extra_key)) {
            $new_value['extra'][$key] = $value;
        }
    }

    if (empty($cart_item_data)) {
        return $new_value;
    } else {
        return array_merge($cart_item_data, $new_value);
    }
    return $cart_item_data;
}


add_action('woocommerce_before_calculate_totals', 'pb_add_custom_price');
function pb_add_custom_price($cart_object)
{
    session_start();
    foreach ($cart_object->cart_contents as $key => $cart_item) {
        if (WC()->session->get($key . "price")) {
            $price = WC()->session->get($key . 'price');
            $size_price = WC()->session->get($key . 'sizeprice');
            $percent_price = WC()->session->get($key . 'percent_price');

            $new_size = 0;
            if (isset($cart_item['extra']['size_chart'])) {
                $new_size = floatval(SGetSizePrice($cart_item['extra']['size_chart'], $cart_item['quantity']));
                WC()->session->set($key . 'sizeprice', $new_size);
            }

            $new_price = $price;
            if ($new_size) {
                $new_price = ($price - $size_price) + $new_size;
            }

            $new_total_percent_price = 0;
            if ($percent_price > 0) {
                $new_total_percent_price = (($new_price * $percent_price) / 100);
            }

            WC()->session->set($key . 'price', $new_price);

            $new_price = floatval($new_total_percent_price + $new_price);

            $cart_item['data']->set_price($new_price);
        }
    }
}

add_filter('woocommerce_checkout_cart_item_quantity', 'pb_remove_qty');
function pb_remove_qty()
{
    return '';
}


add_filter('woocommerce_cart_item_name', 'pb_add_user_custom_data_from_session_into_cart', 1, 3);

if (!function_exists('pb_add_user_custom_data_from_session_into_cart')) {
    function pb_add_user_custom_data_from_session_into_cart($product_name, $values, $cart_item_key)
    {
        $return_var_start = $return_var_end = $string = '';

        $return_string = $product_name;


        $product =  wc_get_product($values['product_id']);
      //  $string .= "<table><tr><td><p><strong>" . $return_string . "</strong> (".wc_price($product->get_price()).")
        //</p>";
        $string .= "<table><tr><td><p><strong>" . $return_string . "</strong></p>";

        foreach ($values['main'] as $k => $value) {

            if (empty($value) || $k == 'size_chart') {
                continue;
            }
            if($k == 'patch_size'){
//                $string .= "<p><strong>" . kGetLabel($k) . " :</strong> (" .wc_price(WC()->session->get($cart_item_key
//                        .'sizeprice')). ")</p>";
                $string .= "<p><strong>" . kGetLabel($k) . " :</strong></p>";
            }else{
                $string .= "<p><strong>" . kGetLabel($k) . " :</strong> " . $value . "</p>";
            }

        }

        foreach ($values['extra'] as $k => $value) {
            if($k =='size_chart'){
                continue;
            }
            if($k =='loop'){
                $string .= "<p><strong>" . kGetLabel($k) . " :</strong>Yes</p>";
            }elseif($k =='tprice'){
                $string .= "<p><strong>" . kGetLabel($k) . " :</strong> " . $value['value'] . "</p>";

            } elseif ($k == 'thread') {
                $str = array();
                foreach ($value as $v){
                    $str['title'][] =$v['title'];
                    $str['price'][] =wc_price($v['price']);
                }
                $string .= "<p><strong>" . kGetLabel($k) . " :</strong> " .implode(",",$str['title']) . "</p>";

            } else {
                $string .= "<p><strong>" . kGetLabel($k) . " :</strong> " . $value['title'] . "</p>";
            }
        }

        $return = false;

        return $string . "</td></tr></table>";

    }
}

function kGetLabel($key)
{
    $return_string = '';
    switch ($key) {
        case  "backing":
            $return_string = "Backing Type";
            break;
        case  "border":
            $return_string = "Border Type";
            break;
        case  "loop":
            $return_string = "Added loop";
            break;
        case  "thread":
            $return_string = "Thread Type";
            break;
        case  "tprice":
            $return_string = "Thread Count";
            break;
        default:
            $return_string = ucfirst($key);
            break;
    }
    return $return_string;
}

add_action('woocommerce_before_cart_item_quantity_zero', 'pb_remove_user_custom_data_from_cart', 1, 1);
if (!function_exists('pb_remove_user_custom_data_from_cart')) {
    function pb_remove_user_custom_data_from_cart($cart_item_key)
    {
        global $woocommerce;

        $cart = $woocommerce->cart->get_cart();

        foreach ($cart as $key => $values) {
            WC()->session->__unset($key);
            unset($woocommerce->cart->cart_contents[$key]);
        }
    }
}
function SGetSizePrice($prices, $qty = 1)
{

    if (count($prices) > 0) {
        $price_array = array();
        foreach ($prices as $price) {
            $price_array[$price['qty']] = $price['price'];
        }
        ksort($price_array);
        $low_qty = 0;

        foreach ($price_array as $q => $p){


            if($q == $qty){

                return $p;
            }
            if($q < $qty || $low_qty ==0){
                $low_qty = $q;
            }
        }


        return $price_array[$low_qty];
    }
    return 0;
}