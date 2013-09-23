// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function(){

	$('a.sign_up, a.sign_in').click(function(e){
		e.preventDefault();

		$('ul.sign_up').toggle();
		$('ul.sign_in').toggle();

		$('a.sign_up').toggleClass('active');
		$('a.sign_in').toggleClass('active');
	});


	$('.colors li div, .kinds li div').click(function(){
		var clicked_link = $(this);
		if (clicked_link.hasClass('active')){
			clicked_link.closest('ul').find('div').removeClass('active');
			clicked_link.closest('fieldset').find('input').val('');
		}else{
			$(clicked_link).closest('ul').find('div').removeClass('active');
			clicked_link.addClass('active');
			clicked_link.closest('fieldset').find('input').val(clicked_link.data('value'));
		}
	});

});
