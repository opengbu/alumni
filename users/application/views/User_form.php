<?php
/*
 *  Created on :Jul 10, 2015, 12:18:54 PM
 *  Author     :Varun Garg <varun.10@live.com>
 */
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="col-sm-5">
    <?php echo form_open_multipart(current_url() . "?" . $_SERVER['QUERY_STRING']); ?>

    <?php
    if (isset($profile_picture) && strlen($profile_picture) > 0) {
        ?>
        <label>Active Picture</label><br />

        <img src = "<?= dirname(base_url()) . '/' . $profile_picture ?>" width="200px"/>
        <br /><br />
        <?php
    }
    ?>
    <label>Add/Change Profile Picture</label><br />
    <?php
    if ($this->input->get('user_id') != NULL) {
        ?>
        <input type = "file" name = "profile_picure" size = "20" />
        <br />
        <?php
    } else {
        echo 'Please create account first. Then go to profile picture and update it from there<br /><br />';
    }
    ?>
    <label>Username (unique)</label>
    <input type = "text" class = "form-control" name = "username" value = "<?php echo set_value('username', @$username); ?>"/>
    <br />
    <label>Full Name</label>
    <input type = "text" class = "form-control" name = "full_name" value = "<?php echo set_value('full_name', @$full_name); ?>"/>
    <br />

    <label>Email Address (unique)</label>
    <input type = "text" class = "form-control" name = "email" value = "<?php echo set_value('email', @$email); ?>"/>
    <br />

    <label>Phone Number (Optional)</label>
    <input type = "text" class = "form-control" name = "phone_number" value = "<?php echo set_value('phone_number', @$phone_number); ?>"/>
    <br />

    <label>Roll Number (Optional)</label>
    <input type = "text" class = "form-control" name = "roll_number" value = "<?php echo set_value('roll_number', @$roll_number); ?>"/>

    <br />
    <p>
        <label for="dob">Date Of birth <span class="required">*</span></label>
        <?php echo form_error('dob'); ?>
        <br /><input class="form-control" id="dob" type="text" name="dob" maxlength="100" value="<?php echo set_value('dob', @$dob); ?>"  />
    </p>
    <br />
    <p>
        <label for="address">Address <span class="required">*</span></label>
        <?php echo form_error('address'); ?>
        <br /><input class="form-control" id="address" type="text" name="address"  value="<?php echo set_value('address', @$address); ?>"  />
    </p>
    <br />
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
    <br />
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


    <br /><?php
    if (!isset($user_id) || $user_id != $this->session->userdata('user_id')) {   // new user, or not current user
        $options = $this->permissions->all_permisiions();

        echo '<label>Type</label><br />';
        echo form_dropdown('type', $options, set_value('type', @$type), 'class="selectpicker"');
        echo '<br /><br />';
    } else
        echo '<input type="hidden" name="type" value="' . $this->session->userdata('type') . '" />';
    ?>   

    <label>Password</label>
    <input type="password" name="password" class="form-control">

    <br />
    <label>Confirm Password</label>
    <input type="password" name="passconf" class="form-control">
    <br />

    <?php
    echo '<label><font color="red">' . validation_errors() . '</font></label>';
    ?>
    <div><input type="submit" value="Add/Update User" class="btn btn-primary"/></div>
        <?php
        echo form_close();
        ?>
</div>