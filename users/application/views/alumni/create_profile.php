<?php
/*
 *  Created on :Sep 02, 2015, 2:20:36 AM
 *  Author     :Varun Garg <varun.10@live.com>
 */
?>
<div class="container-fluid col-sm-10" >

    <h3>Create/Update your profile </h3>
    <b>Note: this is for extra details only. For core details your 
        <a href="<?= base_url('users/edit_user/index/' . $this->session->userdata('user_id')) ?>" >main profile</a> will be used</b>
    <?php echo form_open(current_url()); ?>
    <br />
    <p>
        <label for="dob">Date Of birth <span class="required">*</span></label>
        <?php echo form_error('dob'); ?>
        <br /><input class="form-control" id="dob" type="text" name="dob" maxlength="100" value="<?php echo set_value('dob', @$dob); ?>"  />
    </p>

    <p>
        <label for="address">Address <span class="required">*</span></label>
        <?php echo form_error('address'); ?>
        <br /><input class="form-control" id="address" type="text" name="address"  value="<?php echo set_value('address', @$address); ?>"  />
    </p>

    <p>
        <label for="gender">Gender <span class="required">*</span></label>
        <?php echo form_error('gender'); ?>

        <?php
        $options = array(
            '' => 'Please Select',
            'male' => 'Male',
            'female' => 'Female',
            'other' => 'I prefer not to disclose'
        );
        ?>

        <br /><?php echo form_dropdown('gender', $options, set_value('gender', @$gender), 'class="selectpicker"') ?>
    </p>                                             

    <p>
        <label for="marital_status">Marital status <span class="required">*</span></label>
        <?php echo form_error('marital_status'); ?>

        <?php
        $options = array(
            '' => 'Please Select',
            'married' => 'Married',
            'single' => 'Single'
        );
        ?>

        <br /><?php echo form_dropdown('marital_status', $options, set_value('marital_status', @$marital_status), 'class="selectpicker"') ?>
    </p>                                             


    <p>
        <?php echo form_submit('submit', 'Submit', 'class="btn btn-default"'); ?>
    </p>

    <?php echo form_close(); ?>
    <br>

</div>