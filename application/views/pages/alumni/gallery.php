<link rel="stylesheet" href="<?php echo $this->cdn->res_url('resources/css/magnific.css') ?>">

<script src="<?php echo $this->cdn->res_url('resources/js/magnific.js') ?>"></script>
<?php
$this->load->helper('file');
$names = get_filenames("user_uploads/gallery");
sort($names, SORT_NATURAL | SORT_FLAG_CASE);
echo '<br /><br />'
?>
<div class="container-fluid">
    <div class="popup-gallery">
        <div class="row">
            <?php
            $count = 0;
            foreach ($names as $name) {
                $count++;
                echo '<div class="col-sm-3">';
                echo '<a href ="' . base_url('user_uploads/gallery/' . $name) . '" ><img src = "' . base_url('user_uploads/gallery/' . $name) . '" width="300px" height="300px" /></a>';
                echo '</div>';
                if ($count % 4 == 0) {
                    echo '</div><div class="row">';
                    echo '<br />';
                }
            }
            ?>
        </div>
    </div>
    <div class="row">
        <br />  
    </div>
</div>
<script>
    $(document).ready(function () {
        $('.popup-gallery').magnificPopup({
            delegate: 'a',
            type: 'image',
            tLoading: 'Loading image #%curr%...',
            mainClass: 'mfp-img-mobile',
            gallery: {
                enabled: true,
                navigateByImgClick: true,
                preload: [0, 1] // Will preload 0 - before current, and 1 after the current image
            },
            image: {
                tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
                titleSrc: function (item) {
                    return  '<small>Gautam Buddha University</small>';
                }
            }
        });
    });
</script>
