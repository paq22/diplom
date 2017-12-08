function topbar_dropdown_head_click(){
  $(this).toggleClass("topbar-dropdown-head-selected");
  $($(this).data("target")).toggleClass("hidden");
}

function topbar_ready(){
  $(".topbar-dropdown-head").click(topbar_dropdown_head_click);
}

$(document).ready(topbar_ready);
