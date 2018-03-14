function myFunction() {
  winScroll = document.body.scrollTop || document.documentElement.scrollTop;
  height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  scrolled = (winScroll / height) * 100;
  $(".scroll-indicator-bar").css("width", scrolled.toString() + "%");
}

function scroll_indicator_ready(){
  var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
  var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  var scrolled = (winScroll / height) * 100;
  $(".scroll-indicator-bar").css("width", scrolled.toString() + "%");
  window.onscroll = myFunction;
}

$(document).ready(scroll_indicator_ready);
