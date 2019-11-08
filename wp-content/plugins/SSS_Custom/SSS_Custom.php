<?php

/**
 * Plugin Name: SSS Custom Patch
 * Plugin URI: https://sarabjeetsodhi.com/
 * Description: A Custom Patch Plugins.
 * Version: 1.0.1
 * Author: Sarabjeet Sodhi
 * Author URI: https://sarabjeetsodhi.com
 * Text Domain: SSS_Custom
 * Domain Path: /i18n/languages/
 *
 * @package WooCommerce
 */

defined( 'ABSPATH' ) || exit;

// Define SSS_PLUGIN_FILE.
if ( ! defined( 'SSS_PLUGIN_FILE' ) ) {
define( 'SSS_PLUGIN_FILE', __FILE__ );
}



if ( ! class_exists( 'SSS_CustomSettings' ) ) {
    include_once dirname( __FILE__ ) . '/classes/SSS_CustomSettings.php';
}

