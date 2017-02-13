$(document).ready(function(){
  function addFlash(type, msg) {
    var flash = '<div class="alert alert-' + type + '">' + msg + '</div>'
    $('nav').after(flash);
    removeFlash();
  }

  function removeFlash(clicked) {
    if (clicked) {
      $('.alert').slideUp('slow', function() {
        $('.alert').remove();
      });
    } else {
      setTimeout( function() {
        $('.alert').slideUp('slow', function() {
          $('.alert').remove();
        });
      }, 3000);
    }
  }

  $(document).on('click', '.alert', function() {
    removeFlash(true);
  });
});
