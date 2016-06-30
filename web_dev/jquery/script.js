console.log("jquery is working");

$(document).ready(function() {
  $('div').click(function() {
    $(this).append("<div></div>");
    $(this).toggleClass('vanish');
  });
  $('.vanish').click(function() {
    $(this).remove();
  });
});