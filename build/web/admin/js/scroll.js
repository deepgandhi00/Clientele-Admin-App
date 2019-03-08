/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    var $animation_elements = $('div.animated');
//    alert($animation_elements);
    $window = $(window);
   
    $(window).scroll(function ()
    {


        var window_height = $window.height();
        
        var window_top_position = $window.scrollTop();

        var window_bottom_position = (window_top_position + window_height);

        $.each($animation_elements, function () {
alert();
            var $element = $(this);
            var element_height = $element.outerHeight();
            var element_top_position = $element.offset().top;
            var element_bottom_position = (element_top_position + element_height);

            //check to see if this current container is within viewport
            if ((element_bottom_position >= window_top_position) &&
                    (element_top_position <= window_bottom_position)) 
            { 
//                alert();
                $element.addClass($(this).attr("data-bind"));
               
            } else {
//                alert();
              $element.removeClass($(this).attr("data-bind"));
            }
        });
    });
});
