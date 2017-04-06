<?php
/*------------------------------------------------------------------------
# Masked Fields
# ------------------------------------------------------------------------
# The Krotek
# Copyright (C) 2011-2016 The Krotek. All Rights Reserved.
# @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
# Website: http://thekrotek.com
# Support: support@thekrotek.com
-------------------------------------------------------------------------*/

$_['heading_title']       	= "Masked Fields";
$_['heading_version']   	= "2.1.0";

$_['text_success']    		= 'Success: You have modified Masked Fields!';

/* Options */

$_['entry_masks']     		= "Field Masks";
$_['help_masks']     		= "Mask rules: a - alpha character; 9 - numeric character; * - alphanumeric character; ? - everything after is an optional input.";

$_['text_field']     		= "Field";
$_['text_mask']     		= "Mask";

$_['entry_definitions']     = "Custom Definitions";
$_['help_definitions']     	= "Placeholder - any single character, Rule - any regular expression.";

$_['text_placeholder']     	= "Placeholder";
$_['text_rule']     		= "Rule";

$_['entry_placeholder']     = "Mask Placeholder";
$_['help_placeholder']     	= "You can set any character for mask placeholder (default is underscore).";

/* Buttons */

$_['button_insert']  		= "Add item";
$_['button_remove']  		= "Remove item";

/* Errors */

$_['error_field'] 			= "Field name can only contain Latin letters, digits and underscores.";
	
/* Generic language strings */

$_['heading_latest']   		= "You have the latest version: %s";
$_['heading_future']   		= "Wow! You have version %s and it's from THE FUTURE!";
$_['heading_update']   		= "A new version available: %s. Click <a href='http://thekrotek.com/profile/my-orders' title='Download new version' target='_blank'>here</a> to download.";

$_['entry_version']			= "Check Version";
$_['help_version']			= "Disable, if settings page loads too slow or connection errors displayed.";

$_['entry_customer_groups'] = "Customer Groups";
$_['help_customer_groups']  = "Extension will work for selected groups only (empty - all groups).";

$_['entry_geo_zone']   		= "Geo Zone";
$_['help_geo_zone']   		= "Extension will work for selected geo zone only.";

$_['entry_tax_class']  		= "Tax Class";
$_['help_tax_class']   		= "Tax class, which will be applied for this extension";

$_['entry_status']     		= "Status";
$_['help_status']   		= "Enable or disable this extension";

$_['entry_sort_order'] 		= "Sort Order";
$_['help_sort_order']   	= "Position in the list of extensions of the same type.";

$_['text_edit_title']       = "Edit %s";
$_['text_remove_all']       = "Remove all";
$_['text_none']   	    		= "--- None ---";

$_['text_extension']	 	= "Extensions";
$_['text_total']    		= "Total";
$_['text_module']    		= "Modules";
$_['text_shipping']    		= "Shipping";
$_['text_payment']    		= "Payment";

$_['button_apply']      	= "Apply";
$_['button_help']      		= "Help";

$_['text_content_top']    	= "Content Top";
$_['text_content_bottom'] 	= "Content Bottom";
$_['text_column_left']    	= "Column Left";
$_['text_column_right']   	= "Column Right";

$_['entry_module_layout']   = "Layout:";
$_['entry_module_position'] = "Position:";
$_['entry_module_status']   = "Status:";
$_['entry_module_sort']    	= "Sort Order:";

$_['message_success']     	= "Success: You have modified %s!";

$_['error_permission'] 		= "Warning: You do not have permission to modify %s!";
$_['error_version'] 		= "Impossible to get version information: no connection to server.";
$_['error_disabled'] 		= "Impossible to get version information: Version check is disabled.";
$_['error_fopen'] 			= "Impossible to get version information: allow_url_fopen option is disabled.";
$_['error_empty'] 			= "Error: %s value can't be empty.";
$_['error_numerical'] 		= "Error: %s value should be numerical.";
$_['error_percent'] 		= "Error: %s value should be numerical or in percent.";
$_['error_positive'] 		= "Error: %s value should be zero or more.";
$_['error_date'] 			= "Error: %s has wrong date format.";
$_['error_curl']      		= "cURL error: (%s) %s. Fix it (if necessary) and try to reinstall.";

?>