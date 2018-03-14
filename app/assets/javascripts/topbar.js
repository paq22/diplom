function topbar_dropdown_head_click(){
  $(this).toggleClass("topbar-dropdown-head-selected");
  $($(this).data("target")).toggleClass("hidden");
}

function btn_click(){
  $(".topbar").toggleClass("expand");
  if($(".topbar-content").is(":visible")){
    $(".topbar-content").css('display','none');
  }
  else{
    $(".topbar-content").css('display','block');
  }
}

function topbar_ready(){
	$(".topbar-dropdown-head").click(topbar_dropdown_head_click);
    $(".btn").click(btn_click);
}
$(document).on('turbolinks:load', topbar_ready);



