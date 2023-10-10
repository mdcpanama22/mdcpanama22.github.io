/*
 * INK. Templates (Personal Portofolio)
 * Created by : vavelo
 * Version : 1.1
 */


/* INDEX OF CONTENTS JAVASCRIPT
==================================================
01. PRELOADER
02. PARALLAX BACKGROUND EFFECT
03. TEXT ROTATE
04. HOME ARROW DOWN
05. NAVIGATION
06. MOBILE NAVIGATION
07. SMOTH SCROLL
08. PORTFOLIO FILTER IMAGE
09. TESTIMONIAL SLIDER
10. SCROLL ON TOP BUTTON
11. ANIMATION EFFECT
*/


(function ($) {
    'use strict';

    jQuery(document).ready(function () {


        /* 01. PRELOADER
        ==================================================*/

        $(window).on('load', function () {
            $("#status").fadeOut();
            $("#preloader").delay(500).fadeOut("slow");
        })


        /* 02. PARALLAX BACKGROUND EFFECT
        ==================================================*/

        var parallax = function () {
            $(window).stellar();
        };

        $(function () {
            parallax();
        });


        /* 03. TEXT ROTATE
        ==================================================*/
        $(document).on('ready', function () {
            $('#text-rotator').rotatetext({
                fadeSpeed: 500,
                pauseSpeed: 2000
            });
        });


        /* 06. MOBILE NAVIGATION
        ==================================================*/

        $(document).on('click', '.navbar-collapse.in', function (e) {
            if ($(e.target).is('a') && $(e.target).attr('class') != 'dropdown-toggle') {
                $(this).collapse('hide');
            }
        });

        $('body').scrollspy({
            target: '.navbar-collapse',
            offset: 195
        });


        /* 07. SMOTH SCROLL
        ==================================================*/



        /* 08. PORTFOLIO FILTER IMAGE
        ==================================================*/
        $('#portfolio-items').mixItUp();


        /* 09. TESTIMONIAL SLIDER
        ==================================================*/

        $('.flexslider').flexslider({
            animation: "fade",
            directionNav: false
        });


        /* 11. ANIMATION EFFECT
        ==================================================*/

        AOS.init({
            duration: 1200,
            once: true,
            disable: 'mobile'
        });




    });

})(jQuery);