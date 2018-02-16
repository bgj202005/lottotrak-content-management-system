<?php

/**
 * Provide a admin area view for the widget
 *
 * This file is used to markup the admin-facing aspects of the widget.
 *
 * @link       https://www.magayo.com
 * @since      1.0.0
 *
 * @package    Magayo_Lottery_Results
 * @subpackage Magayo_Lottery_Results/includes
 */
?>

<p>
	<label><?php _e( 'Category', 'magayo-lottery-results' ); ?>: </label>
	<?php wp_dropdown_categories( array( 'orderby' => 'name', 'hide_empty'=> 0, 'name' => $this->get_field_name('category'), 'selected' => $category ) ); ?>
</p>
