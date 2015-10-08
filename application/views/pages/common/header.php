<div class = "row"><!--row1 for header-->


    <nav class="navbar navbar-inverse navbar navbar-fixed-top" >

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href="<?php echo site_url('') ?>">GBU Alumni

            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
            <ul class="nav navbar-nav" style="margin-left: 250px;">

                <li class="dropdown">
                    <a href=""  target="_blank">
                        <font size="2"> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Distinguished Alumni</font>
                    </a>
                </li>
				<li class="dropdown" style="margin-left: 50px;">
                    <a href=""  target="_blank">
                        <font size="2"> <span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> Alumni List</font>
                    </a>
                </li>
				<li class="dropdown" style="margin-left: 50px;">
                    <a href="<?=site_url('alumni/events')?>"  target="_blank">
                        <font size="2"> <span class="glyphicon glyphicon-time" aria-hidden="true"></span> Events</font>
                    </a>
                </li>
				<li class="dropdown" style="margin-left: 50px;">
                    <a href=""<?=site_url('alumni/gallery')?>""  target="_blank">
                        <font size="2"> <span class="glyphicon glyphicon-camera" aria-hidden="true"></span> Gallery</font>
                    </a>
                </li>
				
                

            </ul>
            <ul class="nav navbar-nav  pull-right">

                

                <li>
                    <?php
                    if ($this->session->userdata('loggedin') != 1) {
                        ?>
                        <a href="<?php echo base_url('users') ?>"><font size="2"><span class="glyphicon glyphicon-user " aria-hidden="true"></span>&nbsp;Login</font></a>
                        <?php
                    } else {
                        ?>
                    <li class="dropdown">

                        <a href="<?= base_url() . 'users/User_controls/CreateOrUpdate?user_id=' . $this->session->userdata('user_id') ?>" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-th-large"></i> Welcome <?php echo $this->session->userdata('full_name'); ?>!
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li> 
                                <a href="<?= base_url() . 'users/User_controls/CreateOrUpdate?user_id=' . $this->session->userdata('user_id') ?>">Manage Profile</a>
                            </li>
                            <li><a href="<?= base_url() . 'users/events/CreateOrUpdate' ?>">New Event</a></li>
                            <?php if ($this->session->userdata('level') >= 4) { ?>
                                <li><a href="<?= base_url() . 'users/User_controls/CreateOrUpdate' ?>">New User</a></li>
                                <?php
                            }
                            if ($this->session->userdata('level') >= 2) {
                                ?>

                                <li><a href="<?= base_url() . 'users/schools/CreateOrUpdate' ?>">New School</a></li>
                                <li><a href="<?= base_url() . 'users/clubs/CreateOrUpdate' ?>">New Club</a></li>
                                <li><a href="<?= base_url() . 'users/notices/CreateOrUpdate' ?>">New Notice</a></li>
                                <li><a href="<?= base_url() . 'users/ebooks/CreateOrUpdate' ?>">New Ebook</a></li>
                                <li><a href="<?= base_url() . 'users/exams/CreateOrUpdate' ?>">New Exam</a></li>



                            <?php } ?>
                            <li>
                                <a href="<?= base_url() . 'users/logout?redirect=' ?>">Log out</a>
                            </li>
                        </ul>
                    </li>
                    <?php
                }
                ?>
                </li> 
            </ul>
        </div>
    </nav>
</div><!--row1 for header-->

<style>

    .bt {
        height: 30px;
        position: absolute;
        right: 0;
        top: 10px;
        margin-bottom:-10px;
        border-radius:1px;
    }

</style>