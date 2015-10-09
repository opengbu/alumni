<!DOCTYPE html>
<html>
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='https://fonts.googleapis.com/css?family=Roboto|Oswald|Josefin+Sans|Merriweather+Sans:800' rel='stylesheet' type='text/css'>
        <title>GBU Alumni</title>
        <link rel="shortcut icon" href="<?php echo $this->cdn->res_url('resources/images/favicon.ico') ?>">
        <script src="<?php echo $this->cdn->res_url('resources/jquery-2.1.4.min.js') ?>"></script>
        <link rel="stylesheet" href="<?php echo $this->cdn->res_url('resources/css/bootstrap.min.css') ?>">
        <script src="<?php echo $this->cdn->res_url('resources/js/bootstrap.js') ?>"></script>
        <script>
            $(function () {
                $(".dropdown").hover(
                        function () {
                            $('.dropdown-menu', this).stop(true, true).fadeIn("fast");
                            $(this).toggleClass('open');
                            $('b', this).toggleClass("caret caret-up");
                        },
                        function () {
                            $('.dropdown-menu', this).stop(true, true).fadeOut("fast");
                            $(this).toggleClass('open');
                            $('b', this).toggleClass("caret caret-up");
                        });
            });
        </script>
        <style>
            .caret-up {
                width: 0; 
                height: 0; 
                border-left: 4px solid rgba(0, 0, 0, 0);
                border-right: 4px solid rgba(0, 0, 0, 0);
                border-bottom: 4px solid;

                display: inline-block;
                margin-left: 2px;
                vertical-align: middle;
            }
            body { 
                padding-top: 25px;
                font-family: 'Roboto', sans-serif;
            }

            .divr {
                -webkit-animation: myfirst 5s; /* Chrome, Safari, Opera */
                animation: myfirst 5s;
            }
            #shm {
                margin-top:225px;
                margin-left:375px;
                outline: none;
            }
            .content {
                min-height: calc(100vh - 120px);
                /* 80px header + 40px footer = 120px  */
            }
            body{

                    background: -webkit-linear-gradient(90deg, #FFEEEE 10%, #DDEFBB 90%); /* Chrome 10+, Saf5.1+ */
                    background:    -moz-linear-gradient(90deg, #FFEEEE 10%, #DDEFBB 90%); /* FF3.6+ */
                    background:     -ms-linear-gradient(90deg, #FFEEEE 10%, #DDEFBB 90%); /* IE10 */
                    background:      -o-linear-gradient(90deg, #FFEEEE 10%, #DDEFBB 90%); /* Opera 11.10+ */
                    background:         linear-gradient(90deg, #FFEEEE 10%, #DDEFBB 90%); /* W3C */

                }
        </style>

    </head>
    <body background="" style="margin-top: 10px; background-attachment: fixed; background-repeat: repeat;">
        <div class="se-pre-con"></div>
        <div class="container-fluid content"><!--this div ends in footer.php-->
