<?php

/**
 * The plugin bootstrap file
 *
 * This file is read by WordPress to generate the plugin information in the plugin
 * admin area. This file also includes all of the dependencies used by the plugin,
 * registers the activation and deactivation functions, and defines a function
 * that starts the plugin.
 *
 * @link              https://www.magayo.com
 * @since             1.0.0
 * @package           Magayo_Lottery_Results
 *
 * @wordpress-plugin
 * Plugin Name:       magayo Lottery Results
 * Plugin URI:        https://www.magayo.com
 * Description:       Display lottery results for lottery games across the world.
 * Version:           1.0.1
 * Author:            magayo
 * Author URI:        https://www.magayo.com
 * License:           GPLv2 or later
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain:       magayo-lottery-results
 * Domain Path:       /languages
 */

// If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
	die;
}

/**
 * The code that runs during plugin activation.
 * This action is documented in includes/class-magayo-lottery-results-activator.php
 */
function activate_magayo_lottery_results() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-magayo-lottery-results-activator.php';
	Magayo_Lottery_Results_Activator::activate();
}

/**
 * The code that runs during plugin deactivation.
 * This action is documented in includes/class-magayo-lottery-results-deactivator.php
 */
function deactivate_magayo_lottery_results() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-magayo-lottery-results-deactivator.php';
	Magayo_Lottery_Results_Deactivator::deactivate();
}

register_activation_hook( __FILE__, 'activate_magayo_lottery_results' );
register_deactivation_hook( __FILE__, 'deactivate_magayo_lottery_results' );

/**
 * The core plugin class that is used to define internationalization,
 * admin-specific hooks, and public-facing site hooks.
 */
require plugin_dir_path( __FILE__ ) . 'includes/class-magayo-lottery-results.php';

/**
 * Begins execution of the plugin.
 *
 * Since everything within the plugin is registered via hooks,
 * then kicking off the plugin from this point in the file does
 * not affect the page life cycle.
 *
 * @since    1.0.0
 */
function run_magayo_lottery_results() {

	$plugin = new Magayo_Lottery_Results();
	$plugin->run();

}
run_magayo_lottery_results();
