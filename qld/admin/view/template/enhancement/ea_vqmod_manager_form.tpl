<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-vqmod-edit" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $return; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-danger"><i class="fa fa-close"></i></a>  
      </div>
      <h1><i class="fa fa-wrench"></i> <?php echo $heading_title_vqmods; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
      <div style="margin:0 0 -0 40px; padding:0; display:inline-block;">
          <div class="alert alert-danger" style="border-left: 5px solid #F56B6B; border-radius:0; text-align:left; margin:0; padding:5px;"><i class="fa fa-exclamation-triangle iflash"></i>&nbsp;&nbsp;<?php echo $text_backup_file_warning; ?></div>
      </div>
    </div>
  </div>
  
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
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit_vqmod; ?></h3>
      </div>

      <div class="panel-body clearfix">
      	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-vqmod-edit" class="form-horizontal">
			<div class="col-sm-12">
 				<div class="form-group required" style="padding-top:0px;">
                  <label class="control-label" for="vqmod_file"><?php echo $column_xml; ?></label>
                  <?php if (isset($error_xml)) { ?><div class="text-danger"><strong><?php echo $error_xml; ?></strong></div><?php } ?>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="form-group" style="padding-top:0px;">
                  <textarea name="vqmod_file" id="inputcode" class="form-control"><?php echo htmlentities($vqmod_xml, ENT_QUOTES, 'UTF-8'); ?></textarea>
                </div>                
        	</div>
      	</form>
      </div>
    </div>
    
    <!--<div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> File Preview</h3>
      </div>
      <div class="panel-body clearfix">
          <div class="col-sm-6">
              <div class="form-group" style="padding-top:0px;">
                Original File: <br />
                <textarea name="original_file" id="original_file" class="form-control"></textarea>
              </div>                
          </div>
          <div class="col-sm-6">
              <div class="form-group" style="padding-top:0px;">
                Modded File: <br />
                <textarea name="modded_file" id="modded_file" class="form-control"></textarea>
              </div>                
          </div>
      </div>
    </div>-->
    
  </div>
</div>

<style type="text/css">
#inputcode + .CodeMirror {
	height: 550px;
}
</style>

<script type="text/javascript"><!--
var editor = CodeMirror.fromTextArea(document.getElementById("inputcode"), {
	mode: "application/xml",
	theme: "xq-dark",
	styleActiveLine: true,
	lineNumbers: true,
	lineWrapping: true,
	integer: 2,
	indentWithTabs: true,
	indentUnit: 2,
	autofocus: true,
	alignCDATA: true,
	viewportMargin: 10,
	autoCloseTags: true
});
//--></script>

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