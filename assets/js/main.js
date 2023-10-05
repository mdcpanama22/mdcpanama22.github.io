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


        /* 04. HOME ARROW DOWN
        ==================================================*/

        var arrowBounce = function () {
            var arrow = $(".arrow");
            if (arrow.hasClass("lift")) {
                arrow.removeClass("lift");
            } else {
                arrow.addClass("lift");
            }
        };

        setInterval(arrowBounce, 800);


        /* 05. NAVIGATION
        ==================================================*/

        $(window).on('scroll', function () {
            if ($(window).scrollTop() > 100) {
                $('#navigation').addClass('navigation-background');
            } else {
                $('#navigation').removeClass('navigation-background');
            }
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

        $('a.smoth-scroll').on('click', function (e) {
            var anchor = $(this);
            $('html, body').stop().animate({
                scrollTop: $(anchor.attr('href')).offset().top - 50
            }, 1000);
            e.preventDefault();
        });


        /* 08. PORTFOLIO FILTER IMAGE
        ==================================================*/
        $('#portfolio-items').mixItUp();


        /* 09. TESTIMONIAL SLIDER
        ==================================================*/

        $('.flexslider').flexslider({
            animation: "fade",
            directionNav: false
        });


        /* 10. SCROLL ON TOP BUTTON
        ==================================================*/

        $(window).on('scroll', function () {
            if ($(this).scrollTop() >= 500) {
                $('.scroll-to-top').fadeIn();
            } else {
                $('.scroll-to-top').fadeOut();
            }
        });

        $('.scroll-to-top').on('click', function () {
            $('html, body').animate({
                scrollTop: 0
            }, 800);
            return false;
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