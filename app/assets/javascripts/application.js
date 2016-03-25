// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var width;

$(document).ready(function() {
	$(window).load(function() {

		width = $( window ).width();
		
		setBodyMargin();
		setFormMargin();
		
	});
});

$( window ).resize(function() {
		width = $( window ).width();
		setBodyMargin();
		setFormMargin();
});

function setBodyMargin() {
		var head_ht = $( 'div#header.container' ).height();
		$('.container-body').css('margin-top', head_ht);
}

function setFormMargin() {
		console.log(width);

		var frmWdth;
		var frmMargin;
		if (width > 550) {
			frmWdth = width * .75;
			frmMargin = .25 * width / 2;
		} else {
			frmWdth = width;
			frmMargin = 0;
		}

		console.log(frmWdth);

		$( '#form_div' ).css('width', frmWdth);
		$( '#form_div' ).css('margin-left', frmMargin);

}