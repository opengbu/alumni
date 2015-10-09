<?php

/* 
 *  Created on :Sep 10, 2015, 5:52:50 AM
 *  Author     :Varun Garg <varun.10@live.com>
 */
defined('BASEPATH') OR exit('No direct script access allowed');
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
<script>
    function del_ask(str,id)
    {
        var x = confirm("Do you want to delete " + str + "?");
        if (x === true)
            location.href = "<?php echo base_url() ?>" + "Alumni_events/delete?event_id=" + id;
    }
</script>
<div class ="col-sm-10">
    <h3>Events</h3>
    <br />
    <a href="<?= base_url('alumni_events/CreateOrUpdate') ?>" class="btn btn-primary btn-xs "> Add </a>
    <br /><br />
    
    <?php
    $query = $this->db->query('select * from alumni_events');
    echo '<ul class="nav nav-list col-sm-12">';
    foreach ($query->result() as $row) {
        ?>
        <li class="list-group-item">
            <div class="row">
                <div class="col-sm-3">
                    <?php
                    echo $row->event_name;
                    ?>
                </div>
                
                <div class="col-sm-3">
                    <?php
                    echo $row->event_profile;
                    ?>
                </div>
                <div class="col-sm-2">
                    <?php
                    echo $row->event_date;
                    ?>

                </div>
                <div class="col-sm-2">

                    <?php
                    if ($this->permissions->get_level() > 2)
                        echo '<a class="btn btn-xs btn-default " href="' . base_url() . "Alumni_events/CreateOrUpdate?event_id=$row->event_id" . '"><i class="fa fa-pencil fa-fw"></i>Edit</a>';
                    else
                        echo "<font color='gray'>You cant edit this</font>";
                    ?>

                </div>
                <div class="col-sm-2">
                    <?php
                    if ($this->permissions->get_level() > 2) {
                        ?>
                        <a onclick="del_ask('<?php echo $row->event_name ?>','<?php echo $row->event_id ?>')" class="pull-right btn btn-xs btn-danger"><i class="fa fa-trash-o fa-lg"></i> Delete</a>  
                        <?php
                    } else
                        echo "<font color='gray'>You cant delete this</font>";
                    ?>

                </div>
            </div>
        </li>
        <?php
    }
    ?>
</div>