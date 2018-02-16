<?php

/**
 * Fired during plugin deactivation
 *
 * @link       https://www.magayo.com
 * @since      1.0.0
 *
 * @package    Magayo_Lottery_Results
 * @subpackage Magayo_Lottery_Results/includes
 */

/**
 * Fired during plugin deactivation.
 *
 * This class defines all code necessary to run during the plugin's deactivation.
 *
 * @since      1.0.0
 * @package    Magayo_Lottery_Results
 * @subpackage Magayo_Lottery_Results/includes
 * @author     magayo <support@magayo.com>
 */
class Magayo_Lottery_Results_Deactivator {

	/**
	 * Short Description. (use period)
	 *
	 * Long Description.
	 *
	 * @since    1.0.0
	 */
	public static function deactivate() {
		// ******** 05/08/16 MLR ********
		if (wp_next_scheduled('magayo_lottery_results_cron')) {
			$timestamp = wp_next_scheduled('magayo_lottery_results_cron');
			wp_unschedule_event($timestamp, 'magayo_lottery_results_cron');
		}

		if (get_option('magayo-lottery-results') != false)
			delete_option('magayo-lottery-results');
	}

}
