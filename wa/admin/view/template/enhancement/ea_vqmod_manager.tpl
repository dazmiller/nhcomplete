<?php echo $header; ?>
<?php echo $column_left; ?>

<!--content --> 
<div id="content">

<!-- page header -->   
    <div class="page-header">
      <div class="container-fluid">
        <h1><i class="fa fa-wrench fa-lg"></i>&nbsp;&nbsp;<?php echo $heading_title_vqmods; ?></h1>
        <ul class="breadcrumb">
          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
          <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
    </div>
<!-- page header --> 

<!-- container-fluid -->
    <div class="container-fluid" id="page-load"> 
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?> 
        <div class="panel panel-default">
            <div class="panel-body">
<!-- Content Loader -->
 				<div id="content_loader" rel="index.php?route=enhancement/ea_vqmod_manager&token=<?php echo $token; ?>">
<!-- Content Loader -->

                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-vqmod">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#tab-scripts"><i class="fa fa fa-code fa-lg"></i>&nbsp;&nbsp;<?php echo $tab_scripts; ?></a></li>
                        <li><a data-toggle="tab" href="#tab-settings"><i class="fa fa fa-cogs fa-lg"></i>&nbsp;&nbsp;<?php echo $tab_settings; ?></a></li>
                        <li<?php if ($vqlog) { ?> class="highlight-error"<?php } ?>><a data-toggle="tab" href="#tab-error"><i class="fa fa fa-exclamation-circle fa-lg"></i>&nbsp;&nbsp;<?php echo $tab_error_log; ?></a></li>
                        <span class="pull-left" style="margin:-8px 0 0 40px;">
                        	<div class="alert alert-danger" style="border-left: 5px solid #F56B6B; border-radius:0; text-align:left; margin-bottom:0"><i class="fa fa-exclamation-triangle iflash"></i>&nbsp;&nbsp;<?php echo $text_backup_file_warning; ?></div>
                        </span>
                    </ul>
                    <div class="tab-content">
                        <?php if ($vqmod_is_installed == true) { ?>
                        
                        <div id="tab-scripts" class="tab-pane active">
							<div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th class="text-left eaback"><?php echo $column_id; ?></th>
                                    		<th class="text-left eaback"><?php echo $column_size; ?></th>
                                            <th class="text-center eaback"><?php echo $column_version; ?></th>
                                    		<th class="text-center eaback"><?php echo $column_author; ?></th>
                                    		<th class="text-center eaback"><?php echo $column_status; ?></th>
                                            <th class="text-center eaback"><?php echo $column_action; ?></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <?php if ($vqmods) { ?>
                                        <?php foreach ($vqmods as $vqmod) { ?>
                                        <tr>
                                            <td class="vqnws text-left"><strong><?php echo $vqmod['file_name']; ?></strong><br />
                                            <div class="vqdescription"><?php echo $vqmod['id']; ?><br /><?php echo $vqmod['invalid_xml']; ?></div>                                           
                                            </td>
                                            <td class="text-left"><?php echo $vqmod['file_size']; ?></td>
                                            <td class="text-center"><?php echo $vqmod['version']; ?></td>
                                            <td class="text-center"><?php echo $vqmod['author']; ?></td>
                                            <td class="text-center">
                                            <?php foreach ($vqmod['action'] as $action) { 
                                                if($vqmod['installed'] == 'Enabled'){?>
                                                <a title="<?php echo $action['text']; ?>" class="btn btn-success btn-sm" data-toggle="tooltip" href="<?php echo $action['href']; ?>"><i class="fa fa fa-power-off fa-but-on"></i></a>
                                                <?php } else { ?>
                                                 <a title="<?php echo $action['text']; ?>" class="btn btn-danger btn-sm" data-toggle="tooltip" href="<?php echo $action['href']; ?>"><i class="fa fa fa-power-off fa-but-off"></i></a>
                                            <?php }} ?>
                                            </td>
                                            <td class="vqnws text-center" width="260px">
                                                <a href="<?php echo $vqmod['edit'] ?>" class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i>&nbsp;&nbsp;<?php echo $text_edit; ?></a>&nbsp;
                                                <a href="<?php echo $vqmod['download'] ?>" class="btn btn-warning btn-sm"><i class="fa fa-download"></i>&nbsp;&nbsp;<?php echo $text_download; ?></a>&nbsp;
                                                <a href="<?php echo $vqmod['delete'] ?>" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i>&nbsp;&nbsp;<?php echo $text_delete; ?></a>
                                            </td>
                                        </tr>
                                        <?php } ?>
                                        <?php } else { ?>
                                        <tr>
                                            <td class="center" colspan="6"><?php echo $text_no_results; ?></td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                                
                                <table class="table table-bordered ea-list">
                                    <tr>
                                        <td class="text-left" width="200"><?php echo $entry_upload; ?></td>
                                        <td class="text-left" width="400"><input data-toggle="tooltip" title="<?php echo $entry_upload; ?>" type="file" name="vqmod_file" class="filestyle" data-placeholder="<?php echo $text_no_file; ?>" data-buttonText="<?php echo $button_choose_file; ?>" accept=".xml" /></td>
                                        <td class="text-left">&nbsp;<button type="submit" class="btn btn-primary" onclick="$('#form-vqmod').attr('action', '<?php echo $upload_vqmod; ?>'); $('#form-vqmod').submit();"><i class="fa fa-upload"></i> <?php echo $text_upload; ?></button></td>
                                    </tr>
                                </table>                            
                            </div>
                		</div>                        
                        
                        <div id="tab-settings" class="tab-pane">
                        	<div class="table-responsive"> 
                                <table class="table table-bordered ea-table-striped ea-list">
                                    <tr>
                                        <td class="text-left"><?php echo $entry_vqcache; ?><br /><span class="vqhelp"><?php echo $text_vqcache_help; ?></span></td>
                                        <td class="text-left">
                                            <select multiple="multiple" size="7" id="vqcache">
                                                <?php foreach ($vqcache as $vqcache_file) { ?>
                                                <option><?php echo $vqcache_file; ?></option>
                                                <?php } ?>
                                            </select><br />
                                            <a href="<?php echo $clear_vqcache; ?>" class="btn btn-danger" data-toggle="tooltip"  title="<?php echo $button_clear; ?>"><span><i class="fa fa-trash-o"><?php echo ' '.$button_clear; ?></i></span></a>
                                            <?php if ($ziparchive) { ?>
                                            <a href="<?php echo $download_vqcache; ?>" class="btn btn-danger" data-toggle="tooltip"  title="<?php echo $button_vqcache_dump; ?>"><span><i class="fa fa-trash-o"><?php echo ' ' .$button_vqcache_dump; ?></i></span></a>
                                            <?php } ?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left"><?php echo $entry_backup; ?></td>
                                        <?php if ($ziparchive) { ?>
                                        <td class="text-left"><a data-toggle="tooltip" title="<?php echo $button_backup; ?>" href="<?php echo $download_scripts; ?>" class="btn btn-primary"><span><i class="fa fa-save"><?php echo ' ' .$button_backup; ?></i></span></a></td>
                                        <?php } else { ?>
                                        <td class="text-left"><?php echo $error_ziparchive; ?></td>
                                        <?php } ?>
                                    </tr>
                                    <tr>
                                        <td class="text-left"><?php echo $entry_vqmod_path; ?></td>
                                        <td class="text-left"><?php echo $vqmod_path; ?></td>
                                    </tr>
                                    <?php if ($vqmod_vars) { ?>
                                    <?php foreach ($vqmod_vars as $vqmod_var) { ?>
                                    <tr>
                                        <td class="text-left"><?php echo $vqmod_var['setting']; ?></td>
                                        <td class="text-left"><?php echo $vqmod_var['value']; ?></td>
                                    </tr>
                                    <?php } ?>
                                    <?php } ?>
                                </table>                            
                            </div>
                        </div>                      
 
                        <div id="tab-error" class="tab-pane">
                             <div class="table-responsive">
                                 <table class="table table-bordered ea-table-striped ea-list">
                                    <tr>
                                        <td class="text-left"><textarea rows="20" cols="90" id="error-log"><?php echo $vqlog; ?></textarea>
                                            <div class="right"><?php if ($ziparchive) { ?><a data-toggle="tooltip" title="<?php echo $button_download_log; ?>" href="<?php echo $download_log; ?>" class="btn btn-primary"><span><i class="fa fa-save"><?php echo ' ' .$button_download_log; ?></i></span></a><?php } ?> <a data-toggle="tooltip" title="<?php echo $button_clear; ?>" href="<?php echo $clear_log; ?>" class="btn btn-danger"><span><i class="fa fa-trash-o"><?php echo ' ' .$button_clear; ?></i></span></a></div></td>
                                    </tr>
                                </table>                             
                             </div>
                        </div> 
                        
                        <?php } else { ?>
                		<span><?php echo $vqmod_installation_error; ?></span>
                		<?php } ?>
            		</div>
				</form>
<!-- Content Loader -->
				</div>
 <!-- Content Loader -->       
        	</div>
        </div>
	</div>
<!-- container-fluid -->
    
</div> 
<!--content --> 

<style>
.nav-tabs > li > a {
    border-radius: 2px 20px 0 0;
    color: #666;
	outline:none;
}
#error-log {
	width: 99%;
	height: 400px;
	padding: 5px;
	border: 1px solid #CCCCCC;
	background: #fff;
	overflow: scroll;
	margin-bottom: 10px;
}
#vqcache {
	min-width: 250px;
	margin-bottom: 10px;
}
a.about {
	text-decoration: none;
}
a.about:hover {
	text-decoration: underline;
}
.vqnws {
	white-space: nowrap;
}
a.action-link:hover {
	text-decoration: none;
}
.vqdescription {
	font-size: 0.9em;
	margin: 3px 0px;
}
.vqhelp {
	color: #666;
	font-size: 11px;
	font-weight: normal;
	font-family: Verdana, Geneva, sans-serif;
	display: block;
}
.error-install {
	font-family: "Courrier New", "Lucida Console", monospace;
	font-weight: bold;
}
.font-small {
	color: #666;
	font-size: 11px;
	font-weight: normal;
	font-family: Verdana, Geneva, sans-serif;
}
.eaback {
	background-color: #515151;
	color: #f5f5f5;
	padding: 10px 15px!important;
}
</style>

<script type="text/javascript"><!--
var thisurl = $("#content_loader").attr("rel");
function removeVqmods() {
	$(".alert, .alert2").remove();
	$('[data-toggle=\'tooltip\']').tooltip('hide');
    var postData = $('input[name*=\'selected\']:checked').serialize();
	var ajaxUrl = 'index.php?route=enhancement/ea_vqmod_manager/vqmod_delete_multi&token=<?php echo $token; ?>';
	$.ajax({
		url: ajaxUrl,
		type: 'post',
		data: postData,
		success: function(response) {
			var errortext = response.match(/<div\s+class="alert-danger">[\S\s]*?<\/div>/gi);
			if (!errortext) {
				$(".page-header .container-fluid .pull-right").prepend('<span class="alert2 alert-success2 pull-left"><i class="fa fa-check-circle"></i> <?php echo $success_delete_multi; ?></span>');				
				$(".alert-success2").hide(0).delay(10).fadeIn(500);
   				$(".alert-success2").show(0).delay(3000).fadeOut(2000);
				$("#content_loader").load(thisurl + " #content_loader > *", function() {
					$(":file").filestyle();
					$("#overlay").remove();
				});
			} else {
				errortext = errortext[0].replace(/(<\/?[^>]+>)/gi, "");
				$(".page-header .container-fluid .pull-right").prepend('<span class="alert2 alert-danger2"><i class="fa fa-exclamation-circle"></i>  ' + errortext + '</span>');
			}
		}
	});
}

$(document).ready(function () {
	// Confirm Delete
	$('a').click(function () {
		if ($(this).attr('href') != null && $(this).attr('href').indexOf('delete', 1) != -1) {
			if (!confirm('<?php echo $warning_vqmod_delete; ?>')) {
				return false;
			}
		}
	});

	// Confirm vqmod_opencart.xml Uninstall
	$('a').click(function () {
		if ($(this).attr('href') != null && $(this).attr('href').indexOf('vqmod_opencart', 1) != -1 && $(this).attr('href').indexOf('uninstall', 1) != -1) {
			if (!confirm('<?php echo $warning_required_uninstall; ?>')) {
            	return false;
        	}
		}
	});

	// Confirm vqmod_opencart.xml Delete
	$('a').click(function () {
		if ($(this).attr('href') != null && $(this).attr('href').indexOf('vqmod_opencart', 1) != -1 && $(this).attr('href').indexOf('delete', 1) != -1) {
        	if (!confirm('<?php echo $warning_required_delete; ?>')) {
            	return false;
        	}
    	}
	});
});
//--></script>

<script type="text/javascript"><!--
$('#tabs a:first').tab('show');
//--></script>

<?php if ($vqlog) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('a[href=\'#tab-error\']').trigger('click');
});
//--></script>
<?php } ?>

<!-- Notifications -->
<?php if ($ea_tools_notifications_enable == 1) { ?>
     <script type="text/javascript"><!--
	 $(".alert-danger").hide(0);
	 $(".alert-success").hide(0);
	 //--></script>
	<?php if ($error_warning) { ?>
        <script type="text/javascript"><!--
        $(window).load(function () {$(".alert-danger").hide(0);$("#ea_notify-bottom").html();$("#ea_notify-bottom").html('<div id="ea_notify-bottom-tab" class="bg-danger"><div id="ea_notify-bottom-tab-close" class="close"><i class="fa fa-times"></i></div><div id="ea_notify-bottom-tab-icon"><i class="fa fa-exclamation-circle text-danger"></i></div><div id="ea_notify-bottom-tab-right"><div id="ea_notify-bottom-tab-right-text"><span class="text-danger"><?php echo $error_warning; ?></span></div></div></div>');$("#ea_notify-bottom-tab").addClass('animated rubberBand');refresh_close();notify_flash();});
        //--></script>
    <?php } ?>
    <?php if ($success) { ?>
        <script type="text/javascript"><!--
        $(window).load(function () {$(".alert-success").hide(0);$("#ea_notify-bottom").html();
            $("#ea_notify-bottom").html('<div id="ea_notify-bottom-tab" class="bg-success"><div id="ea_notify-bottom-tab-close" class="close"><i class="fa fa-times"></i></div><div id="ea_notify-bottom-tab-icon"><i class="fa fa-check-circle text-success"></i></div><div id="ea_notify-bottom-tab-right"><div id="ea_notify-bottom-tab-right-text"><span class="text-success"><?php echo $success; ?></span></div></div></div>');$("#ea_notify-bottom-tab").addClass('animated zoomInDown');refresh_close();notify_exit();});
        //--></script>
    <?php } ?>
<?php } ?>
<?php echo $footer; ?>