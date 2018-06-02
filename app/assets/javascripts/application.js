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
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require materialize
$(".dropdown-button").dropdown();
$(document).ready(function() {
    $('select').material_select();
 });

$('select#plan_quirurgico_especialidad').change(function() {
  $.ajax({
     url: '/especialidad_types.json', // you could be fancy and set this in a data attribute.
     success: function(response) {
       // update your form with the response from your ajax request
     }
  });
});


