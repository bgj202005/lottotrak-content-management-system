<?php

/**
 * Provide a admin area view for the plugin
 *
 * This file is used to markup the admin-facing aspects of the plugin.
 *
 * @link       https://www.magayo.com
 * @since      1.0.0
 *
 * @package    Magayo_Lottery_Results
 * @subpackage Magayo_Lottery_Results/admin/partials
 */
?>

<div class="wrap">

	<h2><?php echo esc_html( get_admin_page_title() ); ?></h2>
	
	<?php
		if ($notify_success) {
			echo '<div class="notice notice-success is-dismissible"><p>'; 
			echo $notify_message;
			echo '</p></div>';
		} elseif ($notify_info) {
			echo '<div class="notice notice-info is-dismissible"><p>'; 
			echo $notify_message;
			echo '</p></div>';
		} elseif ($notify_error) {
			echo '<div class="notice notice-error is-dismissible"><p>'; 
			echo $notify_message;
			echo '</p></div>';
		}
	?>
	
	<h2 class="nav-tab-wrapper">
            <a href="#getting-started" class="nav-tab nav-tab-active"><?php _e('Getting Started', $this->plugin_name);?></a>
            <a href="#display-settings" class="nav-tab"><?php _e('Display Settings', $this->plugin_name);?></a>
            <a href="#games-settings" class="nav-tab"><?php _e('Games Settings', $this->plugin_name);?></a>
	</h2>

	<form name="magayo_lottery_results_options" action="options-general.php?page=magayo-lottery-results" method="post">
		<?php
			// Include tabs partials
			require_once('magayo-lottery-results-getting-started.php');
			require_once('magayo-lottery-results-display-settings.php');
			require_once('magayo-lottery-results-games-settings.php');
		?>

    </form>

</div>
