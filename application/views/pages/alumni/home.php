<style>
    hr.style-seven 
    { height: 30px; border-style: solid; border-color: black; border-width: 1px 0 0 0; border-radius: 20px; }
    hr.style-seven:before { /* Not really supposed to work, but does */ display: block; content: ""; height: 30px; margin-top: -31px; border-style: solid; border-color: black; border-width: 0 0 1px 0; border-radius: 20px; }
</style>

<div class="container-fluid" style=" margin-right: 10px; margin-left: 10px;" >
    <div class="row">

        <!--navbar moved to file nav.php-->

        <br/>
        <!--your content-->
        <div>
            <br/><br/><br/>
            <center><p style="font-size: 350%; font-family: 'Merriweather Sans', sans-serif; text-shadow:2px 2px 4px #000000;">Gautam Buddha University</p></center>
            <br/><br/>
        </div>

        <div>
            <center>
                <h2><span class="label label-danger">Alumni Community</span></h2>
                <br><br>
                <p>Gautam Buddha University alumni community has more than 3000 members.<br>
                    The university aims to produce future leaders and entrepreneurs who can inspire the next generation.<br/>
                    The objective of this Alumni Community is to provide a platform to connect and discover GBUites present across the globe. 
                </p>
                <br/>
                <a type="button" class="btn btn-success" href="<?php echo site_url('users/register') ?>" >Register Here</a>
                <br/><br/><br/>
                <hr class="style-seven"/>
            </center>
        </div>



        <div>
            <h2 align="center"><span class="label label-danger">Recent Appointments</span></h2>
            <br><br>
            <div class="container">
                <div class="row">
                    <?php
                    $recent = $this->db->query("SELECT user_id, max( start_year ) as st_yr
									FROM work_details
									GROUP BY user_id
									ORDER BY start_year DESC
									LIMIT 0 , 4");
                    $count = 0;
                    foreach ($recent->result() as $row) {
                        $count++;

                        $work = $this->db->query("SELECT company_name , location , designation FROM work_details WHERE user_id = '$row->user_id' AND start_year = '$row->st_yr' ");
                        $work_data = $work->row();

                        $user = $this->db->query("SELECT full_name , profile_picture FROM users WHERE user_id = '$row->user_id' ");
                        $user_data = $user->row();

                        $edu = $this->db->query("SELECT max(passout_year) as ps_yr FROM edu_info WHERE user_id = '$row->user_id' ");
                        $edu_data = $edu->row();
                        ?>

                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <img src="<?php echo base_url() . $user_data->profile_picture ?>" height="170" width="130"/>
                                        </div>
                                        <div class="col-md-8" id="spn">
                                            <div class="row">
                                                <div class="col-md-4"><b>Name : </b></div>
                                                <div class="col-md-8"><?= $user_data->full_name ?></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4"><b>School : </b></div>
                                                <div class="col-md-8"><!--from DB--></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4"><b>Passout : </b></div>
                                                <div class="col-md-8"><?= $edu_data->ps_yr ?></div>
                                            </div>
                                            <br/>
                                            <div class="row">
                                                <div class="col-md-4"><b>Joined : </b></div>
                                                <div class="col-md-8"><?= $work_data->company_name ?></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4"><b>Position : </b></div>
                                                <div class="col-md-8"><?= $work_data->designation ?></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4"><b>Location : </b></div>
                                                <div class="col-md-8"><?= $work_data->location ?></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <?php
                        if ($count % 2 == 0) {
                            echo '</div><div class="row">';
                        }
                    }
                    ?>		

                </div><br/>
            </div>
            <hr class="style-seven"/>
        </div>



        <div>
            <center>
                <h2><span class="label label-danger">Follow This On</span></h2>
                <br/><br/>
                <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">


                <div class="col-md-12">
                    <ul class="social-network social-circle">
                        <li><a href="#" class="icoFacebook si" title="Facebook"><i class="fa fa-facebook"></i></a>&nbsp;&nbsp;&nbsp;</li>
                        <li><a href="#" class="icoTwitter si" title="Twitter"><i class="fa fa-twitter"></i></a>&nbsp;&nbsp;&nbsp;</li>
                        <li><a href="#" class="icoGoogle si" title="Google +"><i class="fa fa-google-plus"></i></a>&nbsp;&nbsp;&nbsp;</li>
                        <li><a href="#" class="icoLinkedin si" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                    </ul>				
                </div>

            </center>
        </div>
        <br><br><br>
    </div>
</div>
<br><br>

<style>
    #tn {
        border: 1px outset gray;
    }
    #spn
    {
        font-size:17px;
    }



    /*=========================
      Icons
     ================= */

    /* footer social icons */
    ul.social-network {
        list-style: none;
        display: inline;
        margin-left:0 !important;
        padding: 0;
    }
    ul.social-network li {
        display: inline;
        margin: 0 5px;
    }


    /* footer social icons */
    .social-network a.icoRss:hover {
        background-color: #F56505;
    }
    .social-network a.icoFacebook:hover {
        background-color:#3B5998;
    }
    .social-network a.icoTwitter:hover {
        background-color:#33ccff;
    }
    .social-network a.icoGoogle:hover {
        background-color:#BD3518;
    }
    .social-network a.icoVimeo:hover {
        background-color:#0590B8;
    }
    .social-network a.icoLinkedin:hover {
        background-color:#007bb7;
    }
    .social-network a.icoRss:hover i, .social-network a.icoFacebook:hover i, .social-network a.icoTwitter:hover i,
    .social-network a.icoGoogle:hover i, .social-network a.icoVimeo:hover i, .social-network a.icoLinkedin:hover i {
        color:#fff;
    }
    a.socialIcon:hover, .socialHoverClass {
        color:#44BCDD;
    }

    .social-circle li a {
        display:inline-block;
        position:relative;
        margin:0 auto 0 auto;
        -moz-border-radius:50%;
        -webkit-border-radius:50%;
        border-radius:50%;
        text-align:center;
        width: 50px;
        height: 50px;
        font-size:20px;
    }
    .social-circle li i {
        margin:0;
        line-height:50px;
        text-align: center;
    }

    .social-circle li a:hover i, .triggeredHover {
        -moz-transform: rotate(360deg);
        -webkit-transform: rotate(360deg);
        -ms--transform: rotate(360deg);
        transform: rotate(360deg);
        -webkit-transition: all 0.2s;
        -moz-transition: all 0.2s;
        -o-transition: all 0.2s;
        -ms-transition: all 0.2s;
        transition: all 0.2s;
    }
    .social-circle i {
        color: #fff;
        -webkit-transition: all 0.8s;
        -moz-transition: all 0.8s;
        -o-transition: all 0.8s;
        -ms-transition: all 0.8s;
        transition: all 0.8s;
    }

    .si {
        background-color: #A0A0A0;   
    }

</style>