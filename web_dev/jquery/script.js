$(document).ready(function() {
  $('div').click(function() {
    $(this).append("<div></div>");
    $(this).addClass('create');
  });
  $('.create').click(function() {
    $(this).toggleClass('vanish');
  });
  $('.vanish').click(function() {
    $(this).remove();
  });
});