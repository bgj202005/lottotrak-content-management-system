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
define('DB_NAME', 'Lottotrak_wp');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'dU.#,]+M5X!,5=-C*CQ3 U#E>uVgD6H6D@-r}~`nnHifa#WI|0,)k/_ZyvDB)Ap*');
define('SECURE_AUTH_KEY',  'Au4#rlogu![0{ %*.i;.za]!<F%az3mr:? lhnF[;[0]&o&kvmep!C)w=cf@-ZW1');
define('LOGGED_IN_KEY',    '-5/bX:LyC4{sWR6jZ06tV(F=K0szqRGED^c9/9m1G9e|NUNA#iOe5d5xGub0]Ng^');
define('NONCE_KEY',        '/dOXrqE,7ri)w+eh=-HTtMbOhm3NH4yI576-O$Wv`|BQ[)+Rpph`x~CbGL&SY#Sa');
define('AUTH_SALT',        'm=hqi^HPRd5]1~2l3[#2;G3{A#z.s=N(#<Z*tcdy1>/@U6bKR6,?bD@>nQA*5(y<');
define('SECURE_AUTH_SALT', ' Eu+(A~c?5SiJ xz Z^#&$X0D8;Ig-`AY%h=4-oDcks~4ByWmRlEqM~ @_UXv~:/');
define('LOGGED_IN_SALT',   'uo*%lpq*:-p%?DcoZ#oUqN#k;;QLZxh;W<3cvb6F>n[6dtFLGBNx:^^_plk(}tpV');
define('NONCE_SALT',       '{$6QWz|$eh@>Z8psM[N0<;jPWU%/W1|)dd9RB4r0Zc6LFKyul_>ngso![M euYam');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'l0trk1_';

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
