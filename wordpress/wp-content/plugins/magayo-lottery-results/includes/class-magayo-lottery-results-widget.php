<?php
/**
 * The admin-specific functionality of the plugin.
 *
 * @link       https://www.magayo.com
 * @since      1.0.0
 *
 * @package    Magayo_Lottery_Results
 * @subpackage Magayo_Lottery_Results/includes
 */

class Magayo_Lottery_Results_Widget extends WP_Widget {
	
    public function __construct() {
		
		parent::__construct(
			 
			// base ID of the widget
			'magayo_lottery_results_widget',
			 
			// name of the widget
			__('magayo Lottery Results', 'magayo-lottery-results' ),
			 
			// widget options
			array (
				'description' => __( 'Show latest draw results in category.', 'magayo-lottery-results' )
			)
			 
		);
    }
     
    function form( $instance ) {
		$instance = wp_parse_args( ( array ) $instance, array(
			'category' => ''
        ));
		
		$category = $instance['category'];
		
        include( 'magayo-lottery-results-widget-admin-display.php' );
		
    }
     
    function update( $new_instance, $old_instance ) {		
		return $new_instance;
    }
     
    function widget( $args, $instance ) {
        
		// before and after widget arguments are defined by themes
		echo $args['before_widget'];
		
		if ( ! empty( $instance['category'] ) ) {
			$category_id = $instance['category'];

			$post_args = array( 'posts_per_page' => 1, 'category' => $category_id );
			$posts = get_posts( $post_args );
			
			if (count($posts) > 0) {
				$temp_post = $posts[0];
				$post_id = $temp_post->ID;
				$post_data = get_post($post_id);
				$post_content = $post_data->post_content;
				echo $post_content;
			}
		}
		
		// before and after widget arguments are defined by themes
		echo $args['after_widget'];
		
    }
    
	public function register_magayo_lottery_results_widget() {
	 
		register_widget( 'Magayo_Lottery_Results_Widget' );
	 
	}
	
}
