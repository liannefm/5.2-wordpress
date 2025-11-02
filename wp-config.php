<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('WP_CACHE', true);
define( 'WPCACHEHOME', 'C:\xampp\htdocs\module5.2\wordpress\wp-content\plugins\wp-super-cache/' );
define( 'DB_NAME', 'wptest0' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'XuHF#5(AP:%yT^M8/*D}&)Qxo@9h|p6HselT;CAA0SR=t3gi2MCrU_#j2RyV0qq+' );
define( 'SECURE_AUTH_KEY',  '[sSV {zM|!CRkf0#{;RYK~xGX>L2iJZM|3H}9,;mH7<(EUw3)bo<~!.14[&iO:n#' );
define( 'LOGGED_IN_KEY',    'oIi0^*D1B 3}Bb-7pXl/XSkn[R/M>A6>Xb)]~7i9U`hIg>X+6QC;HgS$+x}1LW+A' );
define( 'NONCE_KEY',        'kqQuz|*Dsxcx%7X;%KW&Z4<ZyFbUv#?^+]M(LW~gKY/_pGx+n`@+:)$9d11uF6DR' );
define( 'AUTH_SALT',        'a%G;N^c&v/Ybc#f}njO*H)Ox5c~q/~wPfxWLgz9$=Y{Vc(BTNv+vg=f(|3V:=-Pd' );
define( 'SECURE_AUTH_SALT', 'p2NGug`(BT!Xhz>dM^umC8Zf,JjdV/BWE(_V! ZoJq6_dsP@4Jj;?G}[>TI)GDVk' );
define( 'LOGGED_IN_SALT',   '&9uHPu.h)Hz`;2+5bZif)Zu5g9.fRn/U@T*f.!q!>{nz|$goE2bJ7+=Bf(et$CI#' );
define( 'NONCE_SALT',       'nm<|vZG^)`x*YWC%aAo&tT/0oh|o|pX<c1&E/p4:h@FUgjBzH7sQH4X~BZ41{~U,' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
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
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
