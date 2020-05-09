$(function(){
  var position = $('.service').offset().top;
  $('.banner').click(function () {
    $('body,html').animate({
      scrollTop: position
    });
    return false;
  });
});