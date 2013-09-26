$(function(){
	$("body").mousemove(function(event){
		var time = Math.abs(event.pageX - $("#follow").position().left)*4;
		// $("#follow").stop(true).animate({"left": event.pageX}, time);
	});
});