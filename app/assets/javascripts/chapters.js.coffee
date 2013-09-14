# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


//= require jquery.jplayer.min

$ ->
	playControl()

	$("#jquery_jplayer_1").jPlayer
      ready: ->
        $(this).jPlayer("setMedia", {
          m4v: 'http://www.jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v'
        }).jPlayer('play')
      swfPath: "/assets"
      supplied: "m4v"
      size: { width: 960, height: 600 }


playVideo = ->
  url = 'Jplayer.swf'
  if url?
    $("#jquery_jplayer_1").jPlayer
      ready: ->
        $(this).jPlayer("setMedia", {
          m4v: 'http://www.jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v'
        }).jPlayer('play')
      swfPath: "/assets"
      supplied: "m4v"
      size: { width: 960, height: 600 }

playControl = ->
 		$("#episode .watch").one 'click', (e) ->
	    $("#jp_container_1").show()
	    playVideo()

	   $('#jquery_jplayer_1').bind 'click', (e) ->
	    if $('.jp-play').is ':visible'
	      $(this).jPlayer('play') 
	    else
	      $(this).jPlayer('pause')