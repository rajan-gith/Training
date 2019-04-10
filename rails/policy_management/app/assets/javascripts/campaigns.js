function next_click_behave() {
  $('.btnNext').click(function() {
    $('.nav-pills > .nav-item > .active').parent().next('li').find('a').trigger('click');
    $('.nav-pills > .nav-item > .active').parent().prev('li').find('a').addClass('completed');
    $('.nav-pills > .nav-item > .active').parent().prev('li').find('.wizard_line').addClass('completed');
  });
  $('.btnPrevious').click(function() {
    $('.nav-pills > .nav-item > .active').parent().prev('li').find('a').trigger('click');
    $('.nav-pills > .nav-item > .active').parent().next('li').find('a').removeClass('completed');
    $('.nav-pills > .nav-item > .active').parent().next('li').find('.wizard_line').removeClass('completed');
  });
  $("#side_display").click(function(){
    $(".left_nav").addClass("active");
  });
  $(".side_close").click(function(){
    $(".left_nav").removeClass("active");
  });
}

$(next_click_behave);
