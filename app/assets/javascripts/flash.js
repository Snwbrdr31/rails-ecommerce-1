$(document).ready(function(){

  $(".button-collapse").sideNav();

  setTimeout( function() {
    $('.alert').slideUp('slow', function() {
      $('.alert').remove();
    });
  }, 3000);

  $(document).on('click', '.alert', function() {
    $('.alert').slideUp('slow', function() {
      $('.alert').remove();
    });
  });

});
