<?php
/*
 *  Created on :Sep 02, 2015, 2:20:36 AM
 *  Author     :Varun Garg <varun.10@live.com>
 */
?>
<style>
    h2{
        padding: 0px;
        margin: 0px;
    }

    .pic{
            border-radius:5px;
            height: 30px;
            width: 30px;
            transition: width 1s, height 1s;
        }

    .pic:hover {
        height: 60px;
        width: 60px;
    } 

    h3{
        padding: 0px;
        margin: 0px;
    }
</style>
<div class="container">
<div class ="col-sm-12" style="padding-top:50px; padding-bottom:50px;">

    <h3><span class="label label-default"><?=ucfirst($special);?> Alumni</span></h3>
	<br/><br/>
    <?php
	if($special=='all')
	{
		$select_rows = $this->db->query("select full_name, profile_picture, user_id from users order by user_id desc;");
    }
	else if($special=='distinguished') 
	{
		$select_rows = $this->db->query("select full_name, profile_picture, user_id from users where distinguished = '1' order by user_id desc;");
	}
	$sum = 0;
	
    if ($select_rows->num_rows() > 0) {
        ?>
        <ul class="nav nav-list col-sm-12" id = "record_list"> 
            <b>
                <li class="list-group-item">
                    <div class="row">
                        <div class="col-sm-1">
                            <center>
                                Image
                            </center>
                        </div>
                        <div class="col-sm-3">
                            Name
                        </div>
						<div class="col-sm-1">
                            School
                        </div>
                        <div class="col-sm-1">
                            Passout
                        </div>
						<div class="col-sm-3">
                            Organization
                        </div>
						<div class="col-sm-2">
                            Designation
                        </div>
                        <div class="col-sm-1">
                            Actions
                        </div>
                    </div>
                </li>
            </b>
            <?php
			$count=0;
            foreach ($select_rows->result() as $row) {
				$edu_q = $this->db->query("select passout_year, school_name from edu_info where user_id='$row->user_id' and passout_year IN (select max(passout_year) from edu_info where user_id = '$row->user_id');");
				$edu = $edu_q->row();
				$work_q = $this->db->query("select company_name, designation from work_details where user_id='$row->user_id' and start_year IN (select max(start_year) from work_details where user_id = '$row->user_id');");
                $work = $work_q->row();
				$count++;
				if($count%2==0)
				{
					$color='default';
				}
				else
				{
					$color='info';
				}
				?>
                <li class="list-group-item list-group-item-<?=$color?>">
                    <div class="row">
                        <div class="col-sm-1 media-left">
                                <center>
                                <a href="<?=site_url($row->profile_picture);?>">
                                    <img class="media-object pic" src="<?=base_url($row->profile_picture);?>" alt="pic">
                                </a>
                                </center>
                        </div>
						<div class="col-sm-3">
							<?= $row->full_name ?>
                        </div>
						<div class="col-sm-1">
							<?php if($edu_q->num_rows()>0) echo $edu->school_name ?>
                        </div>
                        <div class="col-sm-1">
                            <?php if($edu_q->num_rows()>0) echo $edu->passout_year ?>
                        </div>
						<div class="col-sm-3">
                            <?php if($work_q->num_rows()>0) echo $work->company_name ?>
                        </div>
						<div class="col-sm-2">
                            <?php if($work_q->num_rows()>0) echo $work->designation ?>
                        </div>
                        <div class="col-sm-1">
                            <a href="<?= site_url('alumni_profile/load_profile?user_id=' . $row->user_id) ?>" class="btn btn-xs btn-primary">View</a>
                        </div>
                    </div>
                </li>

                <?php
            }
            ?>
        </ul>
        <?php
    } else {
        echo "<b>Nothing to Display, no Alumni Found</b>";
    }
    ?>
</div>
</div>
