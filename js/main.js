$(function(){
	$("#mouse").click(function(){

		$("#mouse").hide();
		$("#follow").show();

		var timeout = null;

		$("body").css("cursor", "url(../img/mouse1.png), auto");

		$("body").mousemove(function(event){
			$("#follow").css("height", "225px");
			$("#follow").removeClass("swat");
			$("#follow").removeClass("sit");
			$("#follow").addClass("walk");

			var time = Math.abs(event.pageX - $("#follow").position().left)*3;

			if (event.pageX > $("#follow").position().left + 238) {
				$("#follow").css("transform", "scaleX(-1)");
				$("#follow").stop().animate({"left": event.pageX - 238}, time, function(){
					$("#follow").removeClass("walk");
					$("#follow").addClass("sit");
				});
			} else if (event.pageX < $("#follow").position().left) {
				$("#follow").css("transform", "scaleX(1)");
				$("#follow").stop().animate({"left": event.pageX}, time, function(){
					$("#follow").removeClass("walk");
					$("#follow").addClass("sit");
				});
			}

			if (timeout !== null) {
				clearTimeout(timeout);
			}

			var pounceTime = Math.floor((Math.random()*10)+2);
			timeout = setTimeout(function() {
				timeout = null;
				$("#follow").removeClass("sit");
				$("#follow").css("height", "250px");
				$("#follow").addClass("swat");
			}, 3000);
		});
});
});