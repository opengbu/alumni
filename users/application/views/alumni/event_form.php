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
    if (isset($director_image) && strlen($director_image) > 0) {
        ?>
        <label>Organizer's Picture</label><br />

        <img src = "<?= dirname(base_url()) . '/' . $director_image ?>" width="200px"/>
        <br /><br />
        <?php
    }
    ?>
    <label>Add/Change Organizer's Picture</label><br />
    <?php
    if ($this->input->get('event_id') != NULL) {
        ?>
        <input type = "file" name = "director_image" size = "20" />
        <br />
        <?php
    } else {
        echo 'Please save this event first. Then go to edit and upload it from there<br /><br />';
    }
    ?>
    <label>Event Date</label>
    <input type = "text" class = "form-control" placeholder="YYYY-MM-DD"  name = "event_date" value = "<?php echo set_value('event_date', @$event_date); ?>"/>
    <br />
    <label>Event Name</label>
    <input type = "text" class = "form-control" name = "event_name" value = "<?php echo set_value('event_name', @$event_name); ?>"/>
    <br />

    <label>Event Profile</label>
    <textarea class = "form-control" name = "event_profile" ><?php echo set_value('event_profile', @$event_profile); ?></textarea>
    <br />

    <label>Event Location</label>
    <input type = "text" class = "form-control" name = "event_location" value = "<?php echo set_value('event_location', @$event_location); ?>"/>
    <br />

    <label>Organizer's Name</label>
    <input type = "text" class = "form-control" name = "director_name" value = "<?php echo set_value('director_name', @$director_name); ?>"/>

    <br />
    <label for="dob">Organizer's Role <span class="required">*</span></label>
    <br /><input class="form-control" id="dob" type="text" name="director_info" maxlength="100" value="<?php echo set_value('director_info', @$director_info); ?>"  />

    <br />  <br />

    <?php
    echo '<label><font color="red">' . validation_errors() . '</font></label>';
    ?>
    <div><input type="submit" value="Add/Update Event" class="btn btn-primary"/></div>
        <?php
        echo form_close();
        ?>
</div>