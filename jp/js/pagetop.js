$(function(){
  var topBtn=$('#pagetop');
  topBtn.hide();

  $('#pagetop a[href^=#]').click(function() {
    var href= $(this).attr('href');
    var speed = 100;
    var target = $(href == '#' || href == '' ? 'html' : href);
    var headerHeight = 100;
    var position = target.offset().top - headerHeight;
    $('body,html').animate({scrollTop:position}, speed, 'swing');
    return false;
  });

  $(window).scroll(function(){
    if($(this).scrollTop() > 60){
      topBtn.fadeIn();
    }else{
      topBtn.fadeOut();
    }
  });
});