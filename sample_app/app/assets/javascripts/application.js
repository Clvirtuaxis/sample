// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).click(function (event) {
  var clickover = $(event.target);
  var $navbar = $(".navbar-collapse");               
  var _opened = $navbar.hasClass("in");
  if (_opened === true && !clickover.hasClass("navbar-toggle")) {      
    $navbar.collapse('hide');
  }
});

// $( document ).ready(function() {
//   var heights = $(".item").map(function() {
//     return $(this).height();
//   }).get(),

//   maxHeight = Math.max.apply(null, heights);

//   $(".item").height(maxHeight);
// });