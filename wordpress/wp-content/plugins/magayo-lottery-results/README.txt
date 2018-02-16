=== Plugin Name ===
Contributors: magayo
Tags: lottery, lotto, lottery results, lotto results, powerball, mega millions, euromillions, eurojackpot
Requires at least: 3.5.1
Tested up to: 4.7
Stable tag: 1.0.2
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

Display lottery results for lottery games across the world.

== Description ==

magayo Lottery Results plugin allows you to easily display lottery results in your WordPress blog. You can select and display the draw results for multiple lottery games. Over 450 lottery games around the world are supported.

The supported games include games in Anguilla, Antigua & Barbuda, Argentina, Australia, Austria, Barbados, Belgium, Brazil, Canada, China, Chile, Colombia, Costa Rica, Croatia, Czech Republic, Denmark, Dominica, Dominican Republic, Estonia, Finland, France, Germany, Ghana, Greece, Grenada, Guyana, Hong Kong, Hungary, Iceland, Ireland, Israel, Italy, Jamaica, Japan, Latvia, Lithuania, Luxembourg, Malaysia, Malta, Mauritius, Mexico, Netherlands, New Zealand, Nigeria, Norway, Peru, Philippines, Poland, Portugal, Puerto Rico, Romania, Russia, Saint Kitts and Nevis, Saint Lucia, Saint Vincent and the Grenadines, Singapore, Sint Maarten, Slovakia, Slovenia, South Africa, South Korea, Spain, Sweden, Switzerland, Taiwan, Turkey, Ukraine, United Kingdom, United States, Uruguay, US Virgin Islands, Vietnam & Zimbabwe.

You have the flexibility to customize how the draw results will be displayed such as the date format as well as the colors of the balls and digits. You can also choose to display the lottery results in English, Spanish (Español), Portuguese (Portugués) or Simplified Chinese (简体中文). Many other configurable options are also available.

The lottery results are shown as posts in the specified category of your WordPress blog. You can further add multiple lottery results widgets to display the most recent draw results in the sidebar.

== Installation ==

1. Upload the 'magayo-lottery-results' directory to your '/wp-content/plugins/' directory
2. Activate the plugin through the 'Plugins' menu in WordPress Admin
3. Register for an API account and customize the settings through the 'Settings' menu
4. Drag & drop the 'magayo-lottery-results' widget under the 'Appearance - Widgets' menu

== Upgrade Notice ==

* None yet.

== Frequently Asked Questions ==

= Which WordPress user is used to post the lottery results? =

You can select the user to use for posting the lottery results when you configure the plugin under the Settings menu. However, the user can only have the Author role. If you do not have any user with the Author role only, please create a new user first before configuring our plugin.

= How many API calls do I need? =

For a weekly lottery game, you will require at least 4 API calls per month. For a daily game, at least 30 API calls will be needed.

= How do I set the number of API calls? =

You do not need to set the number of API calls. You only need to indicate the update frequency under the Settings menu. For example, if you choose to update once every week, our plugin will make around 4-5 API calls per month.

= How many lottery games can I choose to display the lottery results? =

You can choose as many games as you like. However, a single API call can only retrieve the latest draw results for a single game.

= How many lottery results widgets can I add to the sidebar? =

You can add as many lottery results widgets as you like. Each lottery results widget will only display the most recent draw results in the specified category.

= How do I know how many API calls are made by the plugin? =

You can login to our API Area (https://www.magayo.com/api/) to view your monthly API usage.

= Why are the lottery results not updated? =

The most likely reason is that you have exceeded your API limit. You can check your API usage in our API Area (https://www.magayo.com/api/) and you may like to consider upgrading your API plan by visiting https://www.magayo.com/lottery-feeds/wordpress-lottery-plugin/.

If you are sure that you have not exceeded your API limit, you may like to turn on your WordPress debug mode to see if you can identify and resolve the problem. Our WordPress cron job for updating the lottery results will log messages when WordPress is in debug mode.

To turn on the debug mode, you can add the following lines into your wp-config.php file:
define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);
define('WP_DEBUG_DISPLAY', false);

When in debug mode, you can check the file /wp-content/debug.log for any errors or messages from our cron job.

Please note that it is not recommended to run WordPress in debug mode for live sites.

== Screenshots ==

1. Our lottery results widgets in English and Spanish where you can easily customize the colors of the balls.
2. Our lottery results widgets in Portuguese and Simplified Chinese where you can easily customize the colors of the balls.
3. Our lottery results posts for USA lottery games based on the Twenty Sixteen theme.
4. Our lottery results posts for UK lottery games based on the Twenty Sixteen theme.
5. The Display Settings in the Settings menu where you can easily customize how the lottery results will be displayed.
6. The Games Settings for you to select your lottery games to show the lottery results.

== Changelog ==

= 1.0.1 =
* Updated all links to HTTPS.
* Tested compatibility with WordPress Version 4.6.

= 1.0.0 =
* First release.
