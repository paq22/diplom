function sidebar_dropdown_head_click(){
  $(this).toggleClass("sidebar-dropdown-head-selected");
  $($(this).data("target")).toggleClass("hidden");
  $($(this).data("target")).toggleClass("sidebar-dropdown-selected");
}

function sidebar_ready(){
  $(".sidebar-dropdown-head").click(sidebar_dropdown_head_click);
}

$(document).ready(sidebar_ready);
