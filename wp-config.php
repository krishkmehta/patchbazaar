<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'tp' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'qh$~.AZQ%d}XF9tz4o#xbFOB^f5u=bEN:KI&-=,Kb;6uSi7!l(3-D(+YBA,}glD^' );
define( 'SECURE_AUTH_KEY',  'C?Tj1BzR>0,y_MV/ ?V.&-%yc:r~Z>JHZm~D|GNG |G8K/;5-8ns:z-N-_w;x-Rv' );
define( 'LOGGED_IN_KEY',    'P9];|(.Z|vxeDHL$>7p&,=^r3X5R!FS>4i]Vk@>[X?ThNmt$/-hr;bNMdY|e0Dh7' );
define( 'NONCE_KEY',        'ov3/1M-.g,xK@TTc.i/+GYJP_F5XJQQ+/:GLYN.c?C[jb7r9aS(>U<!wt@@Mm9]r' );
define( 'AUTH_SALT',        'mZ!a>Vj0V2IZdt TM!>47@$T(PS)Be<5XOSb!cJ_+o0X5=hX0RZ&X~#J D(CI=l4' );
define( 'SECURE_AUTH_SALT', 'HP#(&PZSX#YfCP+6@ElwyA}A;`zOh{m%2]K:2A&AT_viJV5DOB7#=c^.t;o^}&`P' );
define( 'LOGGED_IN_SALT',   'Zgfnpw#`a/+X;L)F],~ja8iMj%jpFnc@)%Z)G-2i0/ey`@@}AiA?9sMmy%jrQmZ:' );
define( 'NONCE_SALT',       'Ur+W;J)}GAVzt3IX[Eok@fuQT?PK;IexrJ$s_@[]~M#I>_Fb^4{puM4GU*FS:0R<' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
