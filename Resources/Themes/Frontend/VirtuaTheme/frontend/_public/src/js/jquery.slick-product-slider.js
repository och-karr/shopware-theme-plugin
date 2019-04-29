(function($, window){
    $.subscribe('plugin/swEmotionLoader/onLoadEmotionFinished', function (event, plugin) {

        const toggleSlick = function () {
            let windowWidth = $(window).width();
            let isSlickListExist = $('.slick-list').length;

            const $status = $('.paging-info');
            const $slickElement = $('.product-list--container');

            $slickElement.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
                //currentSlide is undefined on init -- set it to 0 in this case (currentSlide is 0 based)
                let i = (currentSlide ? currentSlide : 0) + 1;
                $status.text(i + '/' + slick.slideCount);
            });

            if (windowWidth < 576 && !isSlickListExist) {

                $slickElement.slick({

                    arrows: true,
                    speed: 500,
                    autoplay: true,
                    dots: false,
                    infinite: true,
                    slidesToShow: 1,
                    slidesToScroll: 1

                });
            } else if (windowWidth >= 576 && isSlickListExist) {
                $slickElement.slick('unslick');
            }
        };

        toggleSlick();
        $(window).resize(toggleSlick);
    })
})(jQuery, window);