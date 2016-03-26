// Signup responsive variables
var hookSz, decreeSz, pitchSz;
var hookMargin = 20;

function signupResp() {	
	calcSizes();
	setBodyMargin();
	setFormMargin();
	setHook();
	setElemWdths();
	setFonts();
}

function calcSizes() {
	if (width < smWidth) {
		hookSz = 12.5;
		subtitleSz = 20;
		pitchSz = 14;
	} else {
		hookSz = 16;
		subtitleSz = 24;
		pitchSz = 18;
	}
}

function setBodyMargin() {
		head_ht = $( '#header' ).height();
		$('.container-body').css('margin-top', head_ht);
}

function setFormMargin() {
		var frmWdth;
		var frmMargin;
		if (width > smWidth) {
			frmWdth = width * .75;
			frmMargin = .25 * width / 2;
		} else {
			frmWdth = width;
			frmMargin = 0;
		}

		$( '#form_div' ).css('width', frmWdth);
		$( '#form_div' ).css('margin-left', frmMargin);

}

function setHook() {
	$( '#content1 p' ).css('font-size', hookSz);
	$( '#hook' ).css('width', width);
	$( '#content1' ).css('width', width);

	if (width < smWidth) {
		$( '#content1 p' ).css('margin-left', hookMargin);
		$( '#content1 p' ).css('margin-right', hookMargin);
	}
}

function setFonts() {
	$( '.subtitle' ).css('font-size', subtitleSz);
	$( '.details' ).css('font-size', pitchSz);

}

function setElemWdths() {
	$( '#block2' ).css('width', width);
}

