<?php

/**
 * Provide a admin area view for the plugin - Display settings tab
 *
 * @link       https://www.magayo.com
 * @since      1.0.0
 *
 * @package    Magayo_Lottery_Results
 * @subpackage Magayo_Lottery_Results/admin/partials
 */
?>

<div id="display-settings" class="wrap metabox-holder columns-2 magayo-lottery-results-metaboxes hidden">

	<h2><?php _e( 'Results Display Customization', $this->plugin_name ); ?></h2>
        <p><?php _e('Please customize how you would like the draw results to be displayed.', $this->plugin_name);?></p>
		
	<table class="form-table">
		<tr>
			<td>
				<input type="checkbox" id="show_country" name="show_country" value="1" <?php if ($show_country) echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> /> <?php _e( 'Show country', $this->plugin_name ); ?>
			</td>
			<td>
				<input type="checkbox" id="show_state" name="show_state" value="1" <?php if ($show_state) echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> /> <?php _e( 'Show state', $this->plugin_name ); ?>
			</td>
		</tr>
		<tr>
			<td>
				<label for="language"><?php _e('Language (only for draw date & day of week)', $this->plugin_name);?></label>
			</td>
			<td>
				<select id="language" name="language" <?php if ($count_supported_games <= 0) echo 'disabled'; ?> /> >
					<option value="en" <?php if ($language == "en" ) echo 'selected'; ?> >English</option>
					<option value="es" <?php if ($language == "es" ) echo 'selected'; ?> >Español</option>
					<option value="pt" <?php if ($language == "pt" ) echo 'selected'; ?> >Portugués</option>
					<option value="zh" <?php if ($language == "zh" ) echo 'selected'; ?> >简体中文</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				<label for="date_format"><?php _e('Draw date format', $this->plugin_name);?></label>
			</td>
			<td>
				<select id="date_format" name="date_format" <?php if ($count_supported_games <= 0) echo 'disabled'; ?> /> >
					<option value="Y-m-d" <?php if ($date_format == "Y-m-d" ) echo 'selected'; ?> >YYYY-MM-DD (2016-09-28)</option>
					<option value="Y/m/d" <?php if ($date_format == "Y/m/d" ) echo 'selected'; ?> >YYYY/MM/DD (2016/09/28)</option>
					<option value="Y.m.d" <?php if ($date_format == "Y.m.d" ) echo 'selected'; ?> >YYYY.MM.DD (2016.09.28)</option>
					<option value="m-d-Y" <?php if ($date_format == "m-d-Y" ) echo 'selected'; ?> >MM-DD-YYYY (09-28-2016)</option>
					<option value="m/d/Y" <?php if ($date_format == "m/d/Y" ) echo 'selected'; ?> >MM/DD/YYYY (09/28/2016)</option>
					<option value="m.d.Y" <?php if ($date_format == "m.d.Y" ) echo 'selected'; ?> >MM.DD.YYYY (09.28.2016)</option>
					<option value="d-m-Y" <?php if ($date_format == "d-m-Y" ) echo 'selected'; ?> >DD-MM-YYYY (28-09-2016)</option>
					<option value="d/m/Y" <?php if ($date_format == "d/m/Y" ) echo 'selected'; ?> >DD/MM/YYYY (28/09/2016)</option>
					<option value="d.m.Y" <?php if ($date_format == "d.m.Y" ) echo 'selected'; ?> >DD.MM.YYYY (28.09.2016)</option>
					<option value="M-d, Y" <?php if ($date_format == "M-d, Y" ) echo 'selected'; ?> >MMM-DD, YYYY (Sep-28, 2016)</option>
					<option value="M d, Y" <?php if ($date_format == "M d, Y" ) echo 'selected'; ?> >MMM DD, YYYY (Sep 28, 2016)</option>
					<option value="d-M-Y" <?php if ($date_format == "d-M-Y" ) echo 'selected'; ?> >DD-MMM-YYYY (28-Sep-2016)</option>
					<option value="d M Y" <?php if ($date_format == "d M Y" ) echo 'selected'; ?> >DD MMM YYYY (28 Sep 2016)</option>
				</select>
			</td>
		</tr>
		<tr>
			<td></td>
			<td><?php _e( '"MMM-DD, YYYY" & "MMM DD, YYYY" are only available in English.', $this->plugin_name ); ?><br />
			<?php _e( '"DD-MMM-YYYY" & "DD MMM YYYY" are only available in English, Español & Portugués.', $this->plugin_name ); ?></td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" id="show_weekday" name="show_weekday" value="1" <?php if ($show_weekday) echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> /> <?php _e( 'Show day of week', $this->plugin_name ); ?>
			</td>
			<td>
				<input type="checkbox" id="show_bonus_name" name="show_bonus_name" value="1" <?php if ($show_bonus_name) echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> /> <?php _e( 'Show name of bonus ball', $this->plugin_name ); ?>
			</td>
		</tr>
		<tr>
			<td>
				<label for="main_color"><?php _e('Main balls color', $this->plugin_name);?></label>
			</td>
			<td>
				<label for="bonus_color"><?php _e('Bonus ball color', $this->plugin_name);?></label>
			</td>
		</tr>
		<tr>
			<td>
				<input type="radio" id="main_color" name="main_color" value="white" <?php if ($main_color == "white") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_white.png" alt="White" width="32" height="32"><br>
				<input type="radio" id="main_color" name="main_color" value="yellow" <?php if ($main_color == "yellow") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_yellow.png" alt="Yellow" width="32" height="32"><br>
				<input type="radio" id="main_color" name="main_color" value="beige" <?php if ($main_color == "beige") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_beige.png" alt="Beige" width="32" height="32"><br>
				<input type="radio" id="main_color" name="main_color" value="orange" <?php if ($main_color == "orange") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_orange.png" alt="Orange" width="32" height="32"><br>
				<input type="radio" id="main_color" name="main_color" value="red" <?php if ($main_color == "red") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_red.png" alt="Red" width="32" height="32"><br>
				<input type="radio" id="main_color" name="main_color" value="green" <?php if ($main_color == "green") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_green.png" alt="Green" width="32" height="32"><br>
				<input type="radio" id="main_color" name="main_color" value="blue" <?php if ($main_color == "blue") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_blue.png" alt="Blue" width="32" height="32"><br>
				<input type="radio" id="main_color" name="main_color" value="purple" <?php if ($main_color == "purple") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_purple.png" alt="Purple" width="32" height="32"><br>
			</td>
			<td>
				<input type="radio" id="bonus_color" name="bonus_color" value="white" <?php if ($bonus_color == "white") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_white.png" alt="White" width="32" height="32"><br>
				<input type="radio" id="bonus_color" name="bonus_color" value="yellow" <?php if ($bonus_color == "yellow") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_yellow.png" alt="Yellow" width="32" height="32"><br>
				<input type="radio" id="bonus_color" name="bonus_color" value="beige" <?php if ($bonus_color == "beige") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_beige.png" alt="Beige" width="32" height="32"><br>
				<input type="radio" id="bonus_color" name="bonus_color" value="orange" <?php if ($bonus_color == "orange") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_orange.png" alt="Orange" width="32" height="32"><br>
				<input type="radio" id="bonus_color" name="bonus_color" value="red" <?php if ($bonus_color == "red") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_red.png" alt="Red" width="32" height="32"><br>
				<input type="radio" id="bonus_color" name="bonus_color" value="green" <?php if ($bonus_color == "green") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_green.png" alt="Green" width="32" height="32"><br>
				<input type="radio" id="bonus_color" name="bonus_color" value="blue" <?php if ($bonus_color == "blue") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_blue.png" alt="Blue" width="32" height="32"><br>
				<input type="radio" id="bonus_color" name="bonus_color" value="purple" <?php if ($bonus_color == "purple") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_purple.png" alt="Purple" width="32" height="32"><br>
			</td>
		</tr>
		<tr>
			<td>
				<label for="digit_color"><?php _e('Digits color', $this->plugin_name);?></label>
			</td>
			<td>
			</td>
		</tr>
		<tr>
			<td>
				<input type="radio" id="digit_color" name="digit_color" value="white" <?php if ($digit_color == "white") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_white.png" alt="White" width="32" height="32"><br>
				<input type="radio" id="digit_color" name="digit_color" value="yellow" <?php if ($digit_color == "yellow") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_yellow.png" alt="Yellow" width="32" height="32"><br>
				<input type="radio" id="digit_color" name="digit_color" value="beige" <?php if ($digit_color == "beige") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_beige.png" alt="Beige" width="32" height="32"><br>
				<input type="radio" id="digit_color" name="digit_color" value="orange" <?php if ($digit_color == "orange") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_orange.png" alt="Orange" width="32" height="32"><br>
				<input type="radio" id="digit_color" name="digit_color" value="red" <?php if ($digit_color == "red") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_red.png" alt="Red" width="32" height="32"><br>
				<input type="radio" id="digit_color" name="digit_color" value="green" <?php if ($digit_color == "green") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_green.png" alt="Green" width="32" height="32"><br>
				<input type="radio" id="digit_color" name="digit_color" value="blue" <?php if ($digit_color == "blue") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_blue.png" alt="Blue" width="32" height="32"><br>
				<input type="radio" id="digit_color" name="digit_color" value="purple" <?php if ($digit_color == "purple") echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> > <img src="<?php echo plugins_url(); ?>/<?php echo $this->plugin_name; ?>/assets/images/ball_purple.png" alt="Purple" width="32" height="32"><br>
			</td>
			<td>
			</td>
		</tr>
		<tr>
			<td>
				<label for="post_user_id"><?php _e('Post as user (only Author role)', $this->plugin_name);?></label>
			</td>
			<td>
				<select id="post_user_id" name="post_user_id" <?php if ($count_supported_games <= 0) echo 'disabled'; ?> /> >
				<?php
					$blog_authors = get_users( 'orderby=user_name&role=author' );
					
					for ($i=0; $i<count($blog_authors); $i++) {
						$author = $blog_authors[$i];
						$user_info = get_userdata($author->ID);
						echo '<option value="';
						echo $author->ID;
						echo '" ';
						if ($post_user_id == $author->ID ) echo 'selected';
						echo '>';
						echo $user_info->user_login;
						echo '</option>';
					}
				
				?>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				<label for="post_category"><?php _e('Post category', $this->plugin_name);?></label>
			</td>
			<td>
				<select id="post_category" name="post_category" <?php if ($count_supported_games <= 0) echo 'disabled'; ?> /> >
					<option value="country-state" <?php if ($post_category == "country-state" ) echo 'selected'; ?> >Country State Lottery (USA New York Lottery)</option>
					<option value="country" <?php if ($post_category == "country" ) echo 'selected'; ?> >Country Lottery (USA Lottery)</option>
					<option value="state" <?php if ($post_category == "state" ) echo 'selected'; ?> >State Lottery (New York Lottery)</option>
					<option value="game" <?php if ($post_category == "game" ) echo 'selected'; ?> >Game (Lotto)</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="checkbox" id="tag_country" name="tag_country" value="1" <?php if ($tag_country) echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> /> <?php _e( 'Use country as tag', $this->plugin_name ); ?>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="checkbox" id="tag_state" name="tag_state" value="1" <?php if ($tag_state) echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> /> <?php _e( 'Use state as tag', $this->plugin_name ); ?>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="checkbox" id="tag_game" name="tag_game" value="1" <?php if ($tag_game) echo 'checked'; ?> <?php if ($count_supported_games <= 0) echo 'disabled'; ?> /> <?php _e( 'Use game as tag', $this->plugin_name ); ?>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" class="button-primary" id="submit_display_settings" name="submit_display_settings" value="<?php _e('Save settings') ?>" <?php if ($count_supported_games <= 0) echo 'disabled'; ?> />
			</td>
		</tr>
	</table>

</div>
