// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require select2
//= require bootstrap-sprockets
//= require bootstrap-table
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
	$("#users").click(function(){
		if(($("#users_panel").css('display') == "none") && ($("#users_categories_panel").css('display') == "none")) {
	  	$("#users_panel").show(750);
	  } else if (($("#users_panel").css('display') == "none") && ($("#users_categories_panel").css('display') != "none")) {	
	  	$("#users_categories_panel").hide(750);
	  	$("#users_panel").show(750);
	  } else {
	  	$("#users_panel").hide(750);
	  };

	});

	$("#users_categories").click(function(){
		if(($("#users_categories_panel").css('display') == "none") && ($("#users_panel").css('display') == "none")) {
	  	   $("#users_categories_panel").show(750);
	  	 } else if (($("#users_categories_panel").css('display') == "none") && ($("#users_panel").css('display') != "none")) {	
	  	 	$("#users_panel").hide(750);
	  	 	$("#users_categories_panel").show(750);
		  } else {
		  	$("#users_categories_panel").hide(750);
		  };

	});

	 $(".dropdown-selector-single").select2({
	 		theme: "bootstrap",
	 		width: "100%"
	 });

	 $(".dropdown-selector-multiple").select2({
	 		placeholder: "Select Document Category",
	 		width: "auto !important",
	 		theme: "bootstrap"
	 });
});