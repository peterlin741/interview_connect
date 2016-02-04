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
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

//= require google-instant-hangouts

var showInterviewee = function() {
  $('.interviewee').show();
  $('.interviewer').hide();
  $('.admin').hide();
}

var showInterviewer = function() {
  $('.interviewee').hide();
  $('.interviewer').show();
  $('.admin').hide();
}

var showAdmin = function() {
  $('.interviewee').hide();
  $('.interviewer').hide();
  $('.admin').show();
}

var chooseUser = function() {

  var selectedVal = "";
  var selected = $("input[type='radio']:checked");
  if (selected.length > 0) {
      selectedVal = selected.val();
  }
  alert(selectedVal);
}

var ready;

ready = function(){

  $('.show-interviewee').click(function(){
    showInterviewee();
  });

  $('.show-interviewer').click(function(){
    showInterviewer();
  });

  $('.show-admin').click(function(){
    showAdmin();
  });

  $(".choose_user").click(function(){
      chooseUser();
  });

};


$(document).ready(ready);
$(document).on('page:load', ready);


// from application.html.erb, can be reused later
/*

  <br />
  <a href="#" class="show-interviewee">Interviewee!</a>
  <br />
  <a href="#" class="show-interviewer">Interviewer!</a>
  <br />
  <a href="#" class="show-admin">Admin!</a>
  <br />

  <br />



  <div class="interviewee">
    <p>Interviewee</p>
  </div>

  <br /><br />


  <div class="interviewer">
    <p>Interviewer</p>
  </div>

  <br /><br />


  <div class="admin">
    <p>Admin</p>
  </div>

  <br /><br />


*/










