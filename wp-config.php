<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'filmsdb' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
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
define( 'AUTH_KEY',         '-{Lhm$9zR?iQxArIQH~NvhU~?,o~87c+EGIzckv/Vd^IK4|]]+:3,|PqA7S4H%8H' );
define( 'SECURE_AUTH_KEY',  'q%6{._<:O0nM^[$A9)BBwK&{osa6`O/r%%(-9cbM/VT-)B0)yt~W9khp8O-V~Pf]' );
define( 'LOGGED_IN_KEY',    '3}-F&h&D#YA8v+_?(aV3sXna:f9j7d%qgL]V fg:4NNWB~+^cic3,WNgI|rjLx=O' );
define( 'NONCE_KEY',        'box=L^){1)nfSwE+2O^WxcrMzJI!1~S3hpR_rf?h^UV6&z)DTsOQZ<)rzSyw!Mf=' );
define( 'AUTH_SALT',        '$A^j3zSaayI>`=(*X0sT{VfD{,zo[wk1kPSQM&z9+N6PUkk*,Q8mYu#Fb$a|zSUk' );
define( 'SECURE_AUTH_SALT', '-!zf7QY^qbm]pdHWmt)y.qfGIAs*!}PB7PJHY0-i<OYqWpf}FHoeOQH ^]<c1ohQ' );
define( 'LOGGED_IN_SALT',   't5Q-Tj8[kZ|tY%CD(S739l5sU5MvZ~@vM}[NXZ<&a+sP8SUt#1ZQd;UDdf+6&]yJ' );
define( 'NONCE_SALT',       '=u,QOn]xU/1Mi:a.{Sv+dwFz7Y1*x=dAg*ejh2:8 z~59L.XqXW<k5Y7Zls<Ige.' );

/**#@-*/

/**
 * WordPress database table prefix.
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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
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
