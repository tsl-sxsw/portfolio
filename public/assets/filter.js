// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//




$(function(){

    var $container = $('#gallery_container'),
          $filters = $("#filters a");

    $container.imagesLoaded( function(){
        $container.isotope({
            itemSelector : '.photo',
            masonry: {
                columnWidth: 102
            }
        });
    });

    // filter items when filter link is clicked
    $filters.click(function() {
        $filters.removeClass("active");
        $(this).addClass("active");
        var selector = $(this).data('filter');
        $container.isotope({ filter: selector });
        return false;
    });


});
