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

add_action('init', 'km_add_to_cart');
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
                $_SESSION['pb_extra_data'][$key] = $_POST['data'][$key];
                $_SESSION['pb_extra_data'][$key]['tprice_1']['value'] = $value;
            } elseif (isset($_POST['data'][$key][$value])) {
                $_SESSION['pb_extra_data'][$key] = $_POST['data'][$key][$value];
            } else {
                $_SESSION['pb_extra_data'][$key] = $value;
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

    $product_id = ($_SESSION['pb_extra_data']['add_to_cart']);
    $product = wc_get_product($product_id);
    $or_price = 0;
    $percent_price  = 0;
    $main_price = floatval($product->get_price());
    $main_key = array('backing', 'border', 'loop', 'thread', 'tprice');
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
            }elseif ($key == 'tprice') {
                    foreach ($values as $v){
                        $or_price =  $or_price + (floatval($v['price'])*$v['value']);
                    }
            }else{
                if(isset($values['type']) && $values['type'] != 'flat'){
                    $percent_price = $percent_price + floatval($values['price']);

                }else{
                    $or_price =  $or_price + floatval($values['price']);
                }
            }
        }
    }
    $total_price = floatval($or_price+$main_price);

    $total_percent_price =0;
    if($percent_price >0){
        $total_percent_price = (($total_price* $percent_price)/100);
    }

    $total_price = floatval($total_percent_price+$total_price);


    WC()->session->set($data . 'price', $total_price);

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
    $extra_key = array('backing','border','loop','thread','tprice');
    $main_key = array('height','width','patch_size','comments');

    foreach ($_SESSION['pb_extra_data'] as $key => $value){
        if(in_array($key,$main_key)){
            $new_value[$key] = $value;
        }elseif (in_array($key,$extra_key)){
            $new_value[$key] = $value;
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
    foreach ($cart_object->cart_contents as $key => $cart_item) {
        if (WC()->session->get($key . "price")) {
            $cart_item['data']->set_price(WC()->session->get($key . 'price'));
        }
    }
}

add_filter('woocommerce_checkout_cart_item_quantity', 'pb_remove_qty');
function pb_remove_qty()
{
    return '';
}


//add_filter('woocommerce_cart_item_name', 'pb_add_user_custom_data_from_session_into_cart', 1, 3);

if (!function_exists('pb_add_user_custom_data_from_session_into_cart')) {
    function pb_add_user_custom_data_from_session_into_cart($product_name, $values, $cart_item_key)
    {
        $return_var_start = $return_var_end = $string = '';


        $return_string = $product_name;

        $return_var_end = "</table></dl>";
        $string .= "<tr><td><strong>" . $return_string . "</strong></td></tr>";
        $return = false;
        debug($values);
        return $return_string;

    }
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
