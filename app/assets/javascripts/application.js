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
// Screen size vars
var smWidth = 710;
var lgWidth = 1100;

// Dimension vars
// Header-related
var brndSz, tagSize;
var head_ht;
var userTop;
// User nav
var maxUsrWdth, revTp;
var usrHidden = false;

$(document).ready(function() {
	$(window).load(function() {
		setNavHt();
		responsive();
		userTop = $( '#user_nav' ).offset().top;
		revTp = $( '#review' ).offset().top;
		console.log($( window ).width());
	});
});

$( window ).resize(function() {
		responsive();
});

function responsive() {
		width = $( window ).width();
		setLayoutVars();
		setHeader();
		signupResp();
		navMarginLeft();
		signinDisplay();
}

// Sets variables for use based on screen width
function setLayoutVars() {
	if (width < smWidth) {
		brndSz = 24;
		slogSize = 12;
		marginT = -20;
	} else {
		brndSz = 28;
		slogSize = 14;
		marginT = -25;
	}
}

function setHeader() {
	if (width < smWidth) {
		$( '.head_nav' ).hide();
		$( '#user_nav' ).hide();
	} else {
		$( '.head_nav').show();
		$( 'user_nav' ).show();
	}

	$( '#brand' ).css('font-size', brndSz);
	$( '#slogan' ).css('font-size', slogSize);
	$( '#slogan' ).css('margin-top', marginT);
}

// Sets height of nav divs
function setNavHt() {
	hideNavItems();
 	head_ht = $( '#header' ).height();
 	$( '.head_nav' ).css('height', head_ht);
 	lnHt = parseInt($( '.head_nav p' ).css('height'));
 	navMrgTp = (head_ht - lnHt) / 2;
 	$( '.head_nav p' ).css('margin-top', navMrgTp);
 	$( '.head_nav' ).css('max-height', head_ht);
}

function navMarginLeft() {
	$( '#browse' ).css('margin-left', width * .15);
	if ($( '#review' ).offset().top > revTp) {
		$( '#browse' ).css('margin-left', width * .05);

	}
}

// Hide nav items if navbar too tall on load
function hideNavItems() {
	if ($( '#header' ).height() > 60) {
		$( '#user_nav' ).hide();
		$( '#browse' ).css('margin-left', width * .05);
	}
}


// Hides the signin div if screen too narrow
function signinDisplay() {
	if ($( '#user_nav' ).offset().top > userTop) {
		maxUsrWdth = $( window ).width();
		$( '#user_nav' ).hide();
		usrHidden = true;
	}
	if ($( window ).width() > maxUsrWdth) {
		$('#user_nav').show();
		usrHidden = false;
	}
}





