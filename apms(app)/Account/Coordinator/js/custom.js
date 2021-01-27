/*************************************
    Services
**************/
var $;
var WOW;
$(function () {
    new WOW().init();
});

/*************************************
    work
**************/

$(function () {
    $("#work").magnificPopup({
        delegate: 'a', // child items selector, by clicking on it popup will open
        type: 'image',
        gallery: {
            enabled: true
        }
        // other options
    });
});

/*************************************
                Team
*************************************/
$(function () {
    $("#team-members").owlCarousel({
        items: 3,
        autoplay: true,
        smartspeed: 700,
        loop: true,
        autoplayHoverPause: true
    });
});

/*************************************
                test
*************************************/
$(function () {
    $("#cust-test").owlCarousel({
        items: 1,
        autoplay: true,
        smartspeed: 700,
        loop: true,
        autoplayHoverPause: true
    });
});

/*************************************
                counter
*************************************/
$(function () {
    $('.counter').counterUp({
        delay: 10,
        time: 2000
    })
});
/*************************************
                client
*************************************/
$(function () {
    $("#clients-list").owlCarousel({
        items: 6,
        autoplay: true,
        smartspeed: 700,
        loop: true,
        autoplayHoverPause: true
    });
});

/*************************************
                nav
*************************************/
$(function(){
    $(window).scroll(function(){
        if($(this).scrollTop()<50){
            //hide nav
            $("nav").removeClass("demo-top-nav");
            $("#back-to-top").fadeOut();
           }
           else{
            //show nav
               $("nav").addClass("demo-top-nav");
               $("#back-to-top").fadeIn();
           }
    })
    
});
//smooth scrolling

$(function(){
    $("a.smooth-scroll").click(function(event){
               event.preventDefault();
        //get/return sec id
        var section= $(this).attr("href");
        $('html,body').animate({
            scrollTop: $(section).offset().top -64
        },1250,"easeInOutExpo");                       });
});