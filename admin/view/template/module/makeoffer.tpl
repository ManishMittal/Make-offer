<?php 
echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-makeoffer" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-makeoffer" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-title"><span data-toggle="tooltip" title="<?php echo $help_title; ?>"><?php echo $entry_title; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="makeoffer_title" value="<?php echo $makeoffer_title; ?>" placeholder="<?php echo $makeoffer_title; ?>" id="input-title" class="form-control" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label"><?php echo $entry_type; ?></label>
            <div class="col-sm-10">
              <select name="makeoffer_type" class="form-control">
                <?php if ($makeoffer_type) { ?>
                <option value="1" selected="selected"><?php echo $text_percent; ?></option>
                <option value="0"><?php echo $text_minprice; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_percent; ?></option>
                <option value="0" selected="selected"><?php echo $text_minprice; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="makeoffer_status" class="form-control">
                <?php if ($makeoffer_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-attempts"><span data-toggle="tooltip" title="<?php echo $help_attempts; ?>"><?php echo $entry_attempts; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="makeoffer_attempts" value="<?php echo $makeoffer_attempts; ?>" placeholder="<?php echo $makeoffer_attempts; ?>" id="input-attempts" class="form-control" />
            </div>
          </div>
                    
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
