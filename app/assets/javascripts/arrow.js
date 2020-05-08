$(function(){
  $('.fa-chevron-circle-up').click(function () {
    $('body,html').animate({
      scrollTop: 0
    });
    return false;
  }); 
});