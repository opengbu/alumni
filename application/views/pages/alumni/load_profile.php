<?php
/*
 *  Created on :Sep 02, 2015, 2:20:36 AM
 *  Author     :Varun Garg <varun.10@live.com>
 */
$user_id = $this->input->get('user_id');
$basic_info_q = $this->db->query("select * from users where users.user_id = '$user_id';");
$basic_info = $basic_info_q->row();
?>
<style>
    h2{
        padding: 0px;
        margin: 0px;
    }

    h3{
        padding: 0px;
        margin: 0px;
    }
</style>
<div class="container"style="padding-top:50px; padding-bottom:50px;">
    <h3><span class="label label-default">Basic Information</span></h3>

    <?php
    if ($basic_info_q->num_rows() == 0) {
        echo "<b>The requested profile does not exist</b>";
        echo "</div>";
        return;
    }
    ?>
    <ul class="nav nav-list col-sm-12" style="padding-bottom: 30px;padding-top: 40px;">
        <li class="list-group-item list-group-item-warning">
            <div class="row">
                <div class="col-sm-4">
                    <label>Name:</label>
                </div>
                <div class="col-sm-4">
                    <?= $basic_info->full_name ?>
                </div>
            </div>
        </li>

        <li class="list-group-item list-group-item-info">
            <div class="row">
                <div class="col-sm-4">
                    <label>Date Of Birth:</label>
                </div>
                <div class="col-sm-4">
                    <?= $basic_info->dob ?>
                </div>
            </div>
        </li>

        <li class="list-group-item list-group-item-warning">
            <div class="row">
                <div class="col-sm-4">
                    <label>Phone Number:</label>
                </div>
                <div class="col-sm-4">
                    <?= $basic_info->phone_number ?>
                </div>
            </div>
        </li>


        <li class="list-group-item list-group-item-info">
            <div class="row">
                <div class="col-sm-4">
                    <label>Gender:</label>
                </div>
                <div class="col-sm-4">
                    <?= ucfirst($basic_info->gender) ?>
                </div>
            </div>
        </li>


        <li class="list-group-item list-group-item-warning">
            <div class="row">
                <div class="col-sm-4">
                    <label>Address:</label>
                </div>
                <div class="col-sm-4">
                    <?= $basic_info->address ?>
                </div>
            </div>
        </li>

        <li class="list-group-item list-group-item-info">
            <div class="row">
                <div class="col-sm-4">
                    <label>Marital Status:</label>
                </div>
                <div class="col-sm-4">
                    <?= ucfirst($basic_info->marital_status) ?>
                </div>
            </div>
        </li>


        <li class="list-group-item list-group-item-warning">
            <div class="row">
                <div class="col-sm-4">
                    <label>Email</label>
                </div>
                <div class="col-sm-4">
                    <?= $basic_info->email ?>
                </div>
            </div>
        </li>
        <br/><br/>		
    </ul>     
    <br/>
    <div style="padding-bottom: 30px;padding-top: 30px;">

        <h3><span class="label label-default">Work Information</span></h3>
        <br/><br/>
        <?php
        $select_rows = $this->db->query("select id,company_name,start_year,end_year,designation,location from work_details where work_details.user_id = '$user_id' ");

        if ($select_rows->num_rows() > 0) {
            ?>
            <ul class="list-group col-sm-12" id = "record_list"> 
                <b>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-sm-2">
                                Company
                            </div>
                            <div class="col-sm-3">
                                Location
                            </div>
                            <div class="col-sm-2">
                                Designation
                            </div>
                            <div class="col-sm-3">
                                Period
                            </div>
                        </div>
                    </li>
                </b>
                <?php
                $count = 0;
                foreach ($select_rows->result() as $row) {
                    $count++;
                    if ($count % 2 == 0) {
                        $color = 'default';
                    } else {
                        $color = 'info';
                    }
                    ?>
                    <li class="list-group-item list-group-item-<?= $color ?>">
                        <div class="row">
                            <div class="col-sm-2">
                                <?= $row->company_name ?>
                            </div>
                            <div class="col-sm-3">
                                <?= $row->location ?>
                            </div>
                            <div class="col-sm-2">
                                <?= $row->designation ?>
                            </div>
                            <div class="col-sm-3">
                                <?= $row->start_year . ' - ' . $row->end_year ?>
                            </div>
                        </div>
                    </li>

                    <?php
                }
                ?>
            </ul>
            <?php
        } else {
            echo "<b>Nothing to Display, no work data found</b>";
        }
        ?>
        <br/><br/><br/><br/>
    </div>
    <div style="padding-bottom: 30px;padding-top: 30px;">

    </div>
    <div style="padding-bottom: 30px;padding-top: 30px;">

        <h3><span class="label label-default">Education Information</span></h3>
        <br/><br/>

        <?php
        $select_rows = $this->db->query("select id,start_year,passout_year,course_name,school_name from edu_info where user_id = '$user_id' ");
        $sum = 0;

        if ($select_rows->num_rows() > 0) {
            ?>
            <ul class="nav nav-list col-sm-12" id = "record_list"> 
                <b>
                    <li class="list-group-item">
                        <div class="row">
                            <div class="col-sm-6">
                                Course
                            </div>
                            <div class="col-sm-2">
                                School
                            </div>
                            <div class="col-sm-2">
                                Start Year
                            </div>
                            <div class="col-sm-2">
                                Passout Year
                            </div>
                        </div>
                    </li>
                </b>
                <?php
                $county = 0;
                foreach ($select_rows->result() as $row) {
                    $county++;
                    if ($county % 2 == 0) {
                        $color = 'default';
                    } else {
                        $color = 'info';
                    }
                    ?>
                    <li class="list-group-item list-group-item-<?= $color ?>">
                        <div class="row">
                            <div class="col-sm-6">
                                <?= $row->course_name ?>
                            </div>
                            <div class="col-sm-2">
                                <?= $row->school_name ?>
                            </div>
                            <div class="col-sm-2">
                                <?= $row->start_year ?>
                            </div>
                            <div class="col-sm-2">
                                <?= $row->passout_year ?>
                            </div>
                        </div>
                    </li>

                    <?php
                }
                ?>
            </ul>
            <?php
        } else {
            echo "<b>Nothing to Display, no education information found</b>";
        }
        ?>

    </div>
</div>

