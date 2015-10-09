        <link rel="stylesheet" href="<?php echo $this->cdn->res_url('resources/css/magnific.css') ?>">

        <script src="<?php echo $this->cdn->res_url('resources/js/magnific.js') ?>"></script>

        
        <div class="popup-gallery">
            <a href="http://farm9.staticflickr.com/8242/8558295633_f34a55c1c6_b.jpg" ><img src="http://farm9.staticflickr.com/8242/8558295633_f34a55c1c6_s.jpg"></a>
            <a href="http://farm9.staticflickr.com/8382/8558295631_0f56c1284f_b.jpg" ><img src="http://farm9.staticflickr.com/8382/8558295631_0f56c1284f_s.jpg" height="75" width="75"></a>
            <a href="http://farm9.staticflickr.com/8225/8558295635_b1c5ce2794_b.jpg" ><img src="http://farm9.staticflickr.com/8225/8558295635_b1c5ce2794_s.jpg" height="75" width="75"></a>
            <a href="http://farm9.staticflickr.com/8383/8563475581_df05e9906d_b.jpg" ><img src="http://farm9.staticflickr.com/8383/8563475581_df05e9906d_s.jpg" height="75" width="75"></a>
            <a href="http://farm9.staticflickr.com/8235/8559402846_8b7f82e05d_b.jpg" ><img src="http://farm9.staticflickr.com/8235/8559402846_8b7f82e05d_s.jpg" height="75" width="75"></a>
            <a href="http://farm9.staticflickr.com/8235/8558295467_e89e95e05a_b.jpg" ><img src="http://farm9.staticflickr.com/8235/8558295467_e89e95e05a_s.jpg" height="75" width="75"></a>
            <a href="http://farm9.staticflickr.com/8378/8559402848_9fcd90d20b_b.jpg" ><img src="http://farm9.staticflickr.com/8378/8559402848_9fcd90d20b_s.jpg" height="75" width="75"></a>
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
                            return item.el.attr('title') ;
                        }
                    }
                });
            });
        </script>
    