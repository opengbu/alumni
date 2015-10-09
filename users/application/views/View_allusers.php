<?php
/*
 *  Created on :Jul 10, 2015, 12:18:54 PM
 *  Author     :Varun Garg <varun.10@live.com>
 */
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<script>
    function del_ask(str, n)
    {
        var x = confirm("Do you want to delete " + n + "?");
        if (x == true)
            location.href = "<?= base_url() ?>" + "User_controls/delete?user_id=" + str;
    }
    var count = 1;
</script>
<style>
    input.form-fixer {
        padding: 1px;
        font-size: 19px;
    }

    .form-horizontal .form-group input, 
    .form-horizontal .form-group select,
    .form-horizontal .form-group label
    { 
        height: 14px;
        line-height: 14px;
    }
</style>
<div class="col-sm-10">
    <?php
    $current_user_id = $this->session->userdata('user_id');
    $current_user_type = $this->session->userdata('type');
    $options = $this->permissions->all_permisiions();
    $options2 = array(
        '' => 'None',
        '0' => 'No',
        '1' => 'Yes',
    );

    $query = $this->db->query('select * from users order by user_id');
    ?>
    <ul class="nav nav-list">

        <li class="list-group-item">
            <div class="row">
                <b>
                    <div class="col-sm-2">
                        username
                    </div> 

                    <div class="col-sm-2">
                        Full Name
                    </div> 

                    <div class="col-sm-2">
                        Roll Number
                    </div>

                    <div class="col-sm-3">
                        Modify
                    </div>

                    <div class="col-sm-2">
                        Distinguished
                    </div>

                    <div class="col-sm-1">
                        Delete
                    </div>
                </b>
            </div>
        </li>
        <?php
        foreach ($query->result() as $row) {
            ?>
            <li class="list-group-item">
                <div class="row">
                    <div class="col-sm-2">
                        <script>
                            document.write(count + ". ");
                            count++;
                        </script>
                        <?php
                        if ($row->active == 0)
                            echo '<font color = "grey">' . $row->username . '</font>';
                        else
                            echo $row->username;
                        ?>
                    </div>
                    <div class="col-sm-2">
                        <?php
                        echo $row->full_name;
                        ?>
                    </div>
                    <div class="col-sm-2">
                        <?php
                        echo $row->roll_number;
                        ?>
                    </div>
                    <div class="col-sm-3 ">
                        <?php
                        echo form_open(base_url() . '/User_controls/set_type?user_id=' . $row->user_id, 'style="margin: 0 !important; padding: 0 !important;"');
                        if ($row->user_id == $current_user_id ||
                                ($this->permissions->get_level() >= 4 &&
                                $this->permissions->check_if_greater($current_user_id, $row->user_id) == 1 )) {
                            echo '<a class="btn btn-xs btn-success" href="' . base_url() . "User_controls/CreateOrUpdate?user_id=$row->user_id" . '">'
                            . '<i class="fa fa-pencil fa-fw"></i> Edit</a> ';
                        } else {
                            echo '<a class="btn btn-success btn-xs disabled"><i class="fa fa-pencil fa-fw"></i> Edit</a> ';
                        }
                        if ($row->user_id != $current_user_id && $this->permissions->get_level() >= 2 &&
                                $this->permissions->check_if_greater($current_user_id, $row->user_id) == 1) {

                            echo form_dropdown('type', $options, $row->type, 'class="selectpicker" data-style="btn-warning btn-xs" data-width="50%" onchange="this.form.submit()"');
                        } else {
                            echo '<a class="btn btn-xs btn-warning disabled" >'
                            . '<i class="fa fa-gear fa-fw"></i> Assign</a>';
                        }
                        echo form_close();
                        ?>
                    </div>

                    <div class="col-sm-2 ">
                        <?php
                        echo form_open(base_url() . '/User_controls/set_distinguished?user_id=' . $row->user_id, 'style="margin: 0 !important; padding: 0 !important;"');

                        if ($this->permissions->get_level() > 2 &&
                                $this->permissions->check_if_greater($current_user_id, $row->user_id) == 1) {

                            echo form_dropdown('distinguished', $options2, $row->distinguished, 'class="selectpicker" data-style="btn-primary btn-xs" data-width="50%" onchange="this.form.submit()"');
                        } else {
                            echo '<a class="btn btn-xs btn-primary disabled" >'
                            . '<i class="fa fa-gear fa-fw"></i> Assign</a>';
                        }
                        echo form_close();
                        ?>
                    </div>
                    <div class="col-sm-1">
                        <?php
                        if ($row->user_id == $current_user_id)
                            echo "<p class='text-right' ><font color='gray'>Seriously?</font></p>";
                        else if ($this->permissions->get_level() >= 4 &&
                                $this->permissions->check_if_greater($current_user_id, $row->user_id) == 1) {
                            ?>
                            <a onclick="del_ask('<?php echo$row->user_id ?>', '<?php echo$row->username ?>')"
                               class="pull-right btn btn-xs btn-danger"><i class="fa fa-trash-o fa-lg"></i> Delete</a>  

                            <?php
                        } else {
                            echo '<a class="btn btn-danger btn-xs pull-right disabled"><i class="fa fa-trash-o fa-lg"></i> Delete</a>';
                        }
                        ?>
                    </div>
                </div>
            </li>
            <?php
        }
        echo '</ul>'
        ?>
</div>