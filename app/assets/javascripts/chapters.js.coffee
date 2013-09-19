# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


//= require jquery.jplayer.min

grabVideoUrl = ->
  $("meta[name=chapter-url]").attr("content")

$ ->
	playVideo()
	$('#myTab a').bind 'click', (e) ->
		e.preventDefault()
		$(this).tab('show')

	
playVideo = ->
	  url = grabVideoUrl()
	  if url?
	    $("#jquery_jplayer_1").jPlayer
	      ready: ->
	        $(this).jPlayer("setMedia", {
	          m4v: url
	        }).jPlayer('play')
	      swfPath: "/assets"
	      supplied: "m4v"
	      size: { width: 720, height: 450,cssClass:'jp-video-360p'}

playControl = ->
 	#$("#episode .watch").one 'click', (e) ->
	    $("#jp_container_1").show()
	    playVideo()	

	   $('#jquery_jplayer_1').bind 'click', (e) ->
	    if $('.jp-play').is ':visible'
	      $(this).jPlayer('play') 
	    else
	      $(this).jPlayer('pause')