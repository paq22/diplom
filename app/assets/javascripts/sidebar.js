function sidebar_dropdown_head_click(){
  $(this).toggleClass("sidebar-dropdown-head-selected");
  $($(this).data("target")).toggleClass("hidden");
}

function sidebar_button_click(){
  if($(this).parent().css("width") == "250px"){
    $(this).parent().css("width","0px");
    $(this).css("left","0px");
    $(".content").css("left","0px");
    $(".content").css("margin-right","0px");
  }
  else{
    $(this).parent().css("width","250px");
    $(this).css("left","250px");
    $(".content").css("left","250px");
    $(".content").css("margin-right","250px");
  }
}

function sidebar_ready(){
  $(".sidebar-dropdown-head").click(sidebar_dropdown_head_click);
    $("#sidebar-button").mouseover(function(){
    $("#sidebar-button").css("opacity","1");
  });
  $("#sidebar-button").mouseleave(function(){
    $("#sidebar-button").css("opacity","0.3");
  });
  $("#sidebar-button").click(sidebar_button_click);
}

$(document).on('turbolinks:load', sidebar_ready);

