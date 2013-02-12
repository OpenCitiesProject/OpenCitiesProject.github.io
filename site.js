;(function(context) {

    var gfdrr = {}

    gfdrr.slideShow = function(context) {
        var slideIndex = 1,
            $slide = $('[data-index]', context),
            slides = $slide.length;

        $('a.slide-control').click(function() {
            $slide.removeClass('active');

            if (slideIndex === slides) {
                slideIndex = 1;
            } else if ((slideIndex - 1) === 1) {
                slideIndex = slides; 
            } else {
                // Adjust the counter
                if ($(this).hasClass('next')) {
                   slideIndex = (slideIndex + 1); 
                } else {

                    console.log(slideIndex);
                    if (slideIndex <= 1) {
                        slideIndex = slides; 
                    } else {
                        slideIndex = (slideIndex - 1); 
                    }
                }
            }

           $('[data-index="slide-' + slideIndex + '"]', context).addClass('active');
            return false;
        });
    };

    window.gfdrr = gfdrr;
})(window);

