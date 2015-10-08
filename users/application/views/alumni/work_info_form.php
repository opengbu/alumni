<?php
/*
 *  Created on :Sep 02, 2015, 2:20:36 AM
 *  Author     :Varun Garg <varun.10@live.com>
 */
?>

<div class="container-fluid col-sm-10">

    <h3>Add/Update Work Information</h3>
    <?php
    echo form_open(current_url() . "?" . $_SERVER['QUERY_STRING']);
    ?>

    <p>
        <label for="company_name">Company Name <span class="required">*</span></label>
        <?php echo form_error('company_name'); ?>
        <br /><input class="form-control"  id="company_name" type="text" name="company_name" maxlength="50" value="<?php echo set_value('company_name', @$company_name); ?>"  />
    </p>

    <p>
        <label for="location">Location</label>
        <?php echo form_error('location'); ?>
        <br /><input class="form-control" id="location" type="text" name="location" maxlength="100" value="<?php echo set_value('location', @$location); ?>"  />
    </p>

    <p>
        <label for="start_year">Start Year <span class="required">*</span></label>
        <?php echo form_error('start_year'); ?>
        <br /><input class="form-control" id="start_year" type="text" name="start_year" maxlength="15" value="<?php echo set_value('start_year', @$start_year); ?>"  />
    </p>

    <p>
        <label for="end_year">End Year (Enter CURRENT in case of ongoing) <span class="required">*</span></label>
        <?php echo form_error('end_year'); ?>
        <br /><input class="form-control" id="end_year" type="text" name="end_year" maxlength="15" value="<?php echo set_value('end_year', @$end_year); ?>"  />
    </p>

    <p>
        <label for="designation">Designation <span class="required">*</span></label>
        <?php echo form_error('designation'); ?>
        <br /><input class="form-control" id="designation" type="text" name="designation" maxlength="100" value="<?php echo set_value('designation', @$designation); ?>"  />
    </p>
    <p>
        <?php echo form_submit('submit', 'Submit'); ?>
    </p>

    <?php echo form_close(); ?>

</div>