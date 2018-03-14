function progress_bar(){
  a = $(".bar");
  stat = 0;
  parent = "";
  $.each(a, function(){
	parent = $(this).parent();
	max = parseFloat($(this).parent().data('max'));
	curr = parseFloat($(this).data('curr'));
	text = ($(this).data('label'));
	$(this).css("width", ((curr/max)*100).toString() + "%");
	if(text == "percent"){
	  $(this).css("text-align","center");
	  $(this).html(((curr/max)*100).toFixed(1).toString() + "%");
	}
	else if(text=="number"){
	  $(this).css("text-align","center");
	  $(this).html(curr);
	}
	else{
	  $(this).html("&ensp;");
    }
    if($(this).parent().data('stat') != ""){
	  stat = stat + curr;
	}
  });
  if(parent.data('stat') != ""){
    if(parent.data("stat") == "number"){
      str = "<div class='progress-bar-stat'>";
      str = str + stat.toString();
      str = str + '/';
      str = str + max.toString();
      str = str + "</div>";
    }
    else if(parent.data("stat") == "percent"){
	  str = "<div class='progress-bar-stat'>";
	  str = str + ((stat/max)*100).toFixed(1).toString() + "%";
	  str = str + "</div>";
	}
    parent.after(str);
    $(".progress-bar-stat").css("width", parent.css("width"));
    $(".progress-bar-stat").css("text-align", "center");
  }
}

function style_ready(){
  progress_bar();
}

$(document).ready(style_ready);

