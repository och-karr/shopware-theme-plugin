function openMobMenu () {

    $('.sidebar-main').addClass('is--open'); //open submenu
    $('.sidebar-main').addClass('shadowed'); //add shadow
    $('.page-wrap').addClass('moved-page-wrap'); //move rest of the page
    $('.entry--close-off-canvas').removeClass('not-displayed'); //show close icon
}

function closeMobMenu () {

    $('.sidebar-main').removeClass('is--open'); //close submenu
    $('.sidebar-main').removeClass('shadowed'); //remove shadow
    $('.page-wrap').removeClass('moved-page-wrap'); //return rest of the page
    $('.entry--close-off-canvas').addClass('not-displayed'); //hide close icon
}

$(window).resize(function() {

    var width = $(window).width();

    if(width > 767) {
        closeMobMenu();
    }
});

$('.top-bar-hamburger').click(openMobMenu);

$('.close-icon').click(closeMobMenu);