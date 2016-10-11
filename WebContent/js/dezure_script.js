$(function() {

	"use strict";
	
	
	$(window).load(function() {
        // PAGE PRELOADER
        $(window).scrollTop(0);
        $('#status').fadeOut();
        $('#preloader').delay(350).fadeOut('slow');
        // End Page Preloader

        // Isotope
        if($.fn.isotope != 'undefined') {
        // init Isotope
            var $container = $('.portfolio-wrapper');
            if($container.length > 0) {
                $container.isotope({
                    filter: '*',
                    animationOptions: {
                        duration: 750,
                        easing: 'linear',
                        queue: false
                    }
                });
                // filter functions
                var filterFns = {
                // show if number is greater than 50
                    numberGreaterThan50: function() {
                        var number = $(this).find('.number').text();
                        return parseInt( number, 10 ) > 50;
                    },
                    // show if name ends with -ium
                    ium: function() {
                        var name = $(this).find('.name').text();
                        return name.match( /ium$/ );
                    }
                };
                // bind filter button click
                $('#portfolio-filters').on( 'click', 'li', function() {
                    var filterValue = $( this ).attr('data-filter');
                    // use filterFn if matches value
                    filterValue = filterFns[ filterValue ] || filterValue;
                    $container.isotope({ filter: filterValue });
                });
                // change is-checked class on buttons
                $('.filters-nav').each( function( i, buttonGroup ) {
                    var $buttonGroup = $( buttonGroup );
                    $buttonGroup.on( 'click', 'li', function() {
                        $buttonGroup.find('.is-active').removeClass('is-active');
                        $( this ).addClass('is-active');
                    });
                });
            }
        }
        // End Isotope

	});

    // Page Scroll
    $('#main-menu ul li a').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });


	//* Sticky Header *//
	// grab the initial top offset of the navigation 
	$(document).ready(function() {
		var sticky_navigation_offset_top = $('#header').offset().top;
	
		// our function that decides weather the navigation bar should have "fixed" css position or not.
		var sticky_navigation = function(){
			var scroll_top = $(window).scrollTop(); // our current vertical position from the top
			
			// if we've scrolled more than the navigation, change its position to fixed to stick to top, otherwise change it back to relative
			if (scroll_top > sticky_navigation_offset_top) { 
				$('#header').addClass('header-fixed');
			} else {
				//$('#header').removeClass('header-fixed'); 
			}   
		};
		
		// run our function on load
		sticky_navigation();
		
		// and run it again every time you scroll
		$(window).scroll(function() {
			 sticky_navigation();
		});
	
	});
	


    //* Accordion *//
    function toggleChevron(e) {
	    $(e.target)
	        .prev('.panel-heading')
	        .find("i.indicator")
	        .toggleClass('icon-plus icon-minus');
	    }
		$('#accordion').on('hidden.bs.collapse', toggleChevron);
		$('#accordion').on('shown.bs.collapse', toggleChevron);

		$('.panel-default').on('show.bs.collapse', function () {
	         $(this).addClass('active');
	    });

	    $('.panel-default').on('hide.bs.collapse', function () {
	    	$(this).removeClass('active');
		});


    // Progress Bar
    var timerAppeared = false,
        skillBars =  $('.skill-bars');
        if(skillBars.length) {
            $(skillBars).appear();
            $(document.body).on('appear', skillBars, function(e, $affected) {
                if(!timerAppeared){
                    skillBars.find('.bar').each(function() {
                        var me = $(this);
                        var perc = me.attr("data-percentage");
                        //TODO: left and right text handling
                        var current_perc = 0;
                        var progress = setInterval(function() {
                            if (current_perc>=perc) {
                                clearInterval(progress);
                            } else {
                                current_perc +=1;
                                me.text((current_perc)+'%');
                                me.next('.progress').children('.progress-bar').css('width', (current_perc)+'%');
                            }
                        }, 50);  
                    });
                }
                timerAppeared = true;
            });
        }

    var doSlideshowFullHeight = function(){
        $('#slideshow.lt-fullheight').css('height', $(window).height() );
    };

    doSlideshowFullHeight();

    $(window).resize(function(){
        doSlideshowFullHeight();
    });

    
    // To Top
    // browser window scroll (in pixels) after which the "back to top" link is shown
    var offset = 300,
        //browser window scroll (in pixels) after which the "back to top" link opacity is reduced
        offset_opacity = 1200,
        //duration of the top scrolling animation (in ms)
        scroll_top_duration = 700,
        //grab the "back to top" link
        $back_to_top = $('.cd-top');

    //hide or show the "back to top" link
    $(window).scroll(function(){
        ( $(this).scrollTop() > offset ) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible cd-fade-out');
        if( $(this).scrollTop() > offset_opacity ) { 
            $back_to_top.addClass('cd-fade-out');
        }

    });

    //smooth scroll to top
    $back_to_top.on('click', function(event){
        event.preventDefault();
        $('body,html').animate({
            scrollTop: 0 ,
             }, scroll_top_duration
        );
    });

    // Mailchimp integration
    // SUBSCRIBE FORM
    function register($form) {
        $.ajax({
            type: $form.attr('method'),
            url: $form.attr('action'),
            data: $form.serialize(),
            cache       : false,
            dataType    : 'json',
            contentType: "application/json; charset=utf-8",
            error       : function(err) {
                var themessage = $('<span class="alert alert-danger"><button type="button" class="close icon-close" data-dismiss="alert" aria-hidden="true"></button>Could not connect to server. Please try again later.</span>');
                $('#notification_container').html(themessage);
                setTimeout(function(){
                    themessage.addClass('animate');
                }, 300)
            },
            success     : function(data) {
                if (data.result != "success") {
                    var message = data.msg.substring(4),
                    themessage = $('<span class="alert alert-warning"><button type="button" class="close icon-close" data-dismiss="alert" aria-hidden="true"></button>'+message+'</span>');
                    $('#notification_container').html(themessage);
                    setTimeout(function(){
                        themessage.addClass('animate');
                    }, 300);
                } 
                else {
                    var message = data.msg,
                    themessage = $('<span class="success alert alert-success"><button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>'+message+'</span>');
                    $('#notification_container').html(themessage);
                    setTimeout(function(){
                        themessage.addClass('animate');
                    }, 300)
                }
            }
        });
    }
    var $form = $('#mc-embedded-subscribe-form');
    $('#mc-embedded-subscribe').on('click', function(event) {
        if(event) event.preventDefault();
        register($form);
    });




});