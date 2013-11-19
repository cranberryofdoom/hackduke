$(function(){
  $.getJSON('http://api.justin.tv/api/stream/list.json?&channel=hackduke&jsonp=?')
    .success(function(data) {
      if (data.length > 0) {
        $('#stream').show();
        $('#stream-embed').html('<object type="application/x-shockwave-flash" height="400" width="711" id="live_embed_player_flash" data="http://www.justin.tv/widgets/live_embed_player.swf?channel=hackduke" bgcolor="#000000"><param name="allowFullScreen" value="true" /><param name="allowScriptAccess" value="always" /><param name="allowNetworking" value="all" /><param name="movie" value="http://www.justin.tv/widgets/live_embed_player.swf" /><param name="flashvars" value="hostname=www.justin.tv&channel=hackduke&auto_play=true&start_volume=20" /></object>');
      }
    })
    .error(function() {
      console.log('Could not query justin.tv');
    });
});
