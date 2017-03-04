	// Swticher Cookie Base
	/**
	* Styleswitch stylesheet switcher built on jQuery
	* Under an Attribution, Share Alike License
	* By Kelvin Luck ( http://www.kelvinluck.com/ )
	* Thanks for permission! 
	**/

	(function($)
	{



		$('.styleswitch').click(function()
			{
				switchStylestyle(this.getAttribute("rel"));
				return false;
			});



		function switchStylestyle(styleName)
		{
			$('link[rel*=style][title]').each(function(i) 
			{
				this.disabled = true;
				if (this.getAttribute('title') == styleName) this.disabled = false;
			});
			createCookie('style', styleName, 365);
		}
	})(jQuery);
	
	function createCookie(name,value,days)
	{
		if (days)
		{
			var date = new Date();
			date.setTime(date.getTime()+(days*24*60*60*1000));
			var expires = "; expires="+date.toGMTString();
		}
		else var expires = "";
		document.cookie = name+"="+value+expires+"; path=/";
	}
	function readCookie(name)
	{
		var nameEQ = name + "=";
		var ca = document.cookie.split(';');
		for(var i=0;i < ca.length;i++)
		{
			var c = ca[i];
			while (c.charAt(0)==' ') c = c.substring(1,c.length);
			if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
		}
		return null;
	}
	function eraseCookie(name)
	{
		createCookie(name,"",-1);
	}

	// DEMO Swticher Base
	jQuery('.demo_changer .demo-icon').click(function(){

		if(jQuery('.demo_changer').hasClass("active")){
			jQuery('.demo_changer').animate({"left":"-400px"},function(){
				jQuery('.demo_changer').toggleClass("active");
			});						
		}else{
			jQuery('.demo_changer').animate({"left":"0px"},function(){
				jQuery('.demo_changer').toggleClass("active");
			});			
		} 
	});

	jQuery('.layoutswitcher a').click(function(e){
		
		e.preventDefault();
		var $this = jQuery(this),
			$ly = $this.attr('rel');
		jQuery('body').removeClass('boxed full').addClass($ly);

		jQuery(window).trigger("resize");

		jQuery('.portfolio-wrapper').each(function(index, el) {
			jQuery(el).isotope( 'layout' );
		});

		jQuery(".owl-carousel").data('owlCarousel').reinit();
	});

	
	// Selector (MODULE #4)
	$(window).on('load', function () {
		$('.selectpicker').selectpicker({
			'selectedText': 'cat'
		});
	});

	// Selector (MODULE #2)
	jQuery('.demo_changer .PatternChanger a').click(function(){
		var bgBgCol = jQuery(this).attr('href');
		jQuery('.demo_changer .PatternChanger a').removeClass('current');
		jQuery('body').css({backgroundColor:'#ffffff'});
		jQuery(this).addClass('current');
		jQuery('body').css({backgroundImage:'url(' + bgBgCol + ')'});
		if (jQuery(this).hasClass('bg_t')){
			jQuery('body').css({backgroundRepeat:'no-repeat', backgroundPosition:'center', backgroundSize:'cover', backgroundAttachment: 'fixed'});
		} else {
			jQuery('body').css({backgroundRepeat:'repeat', backgroundPosition:'50% 0'});
		}
		return false;
	});


var isMobile = {
    Android: function() {
        return navigator.userAgent.match(/Android/i);
    },
    BlackBerry: function() {
        return navigator.userAgent.match(/BlackBerry/i);
    },
    iOS: function() {
        return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    },
    Opera: function() {
        return navigator.userAgent.match(/Opera Mini/i);
    },
    Windows: function() {
        return navigator.userAgent.match(/IEMobile/i) || navigator.userAgent.match(/WPDesktop/i);
    },
    any: function() {
        return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
    }
};

