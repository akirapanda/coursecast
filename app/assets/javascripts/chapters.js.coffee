# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


//= require jquery.jplayer.min

grabVideoUrl = ->
  $("meta[name=chapter-url]").attr("content")

$ ->
	$('#myTab a').bind 'click', (e) ->
		e.preventDefault()
		$(this).tab('show')
	playControl()
	playVideo()


	
playVideo = ->
	  url = grabVideoUrl()
	  if url?
	    $("#jquery_jplayer_1").jPlayer
	      ready: ->
	        $(this).jPlayer("setMedia", {
	          m4v: url
	        }).jPlayer('pause')
	      swfPath: "/assets"
	      supplied: "m4v"
	      size: { width: 720, height: 450,cssClass:'jp-video-450p'}
	      smoothPlayBar: true
	      keyEnabled: true
		 
	  $("#jplayer_inspector").jPlayerInspector({jPlayer:$("#jquery_jplayer_1")})
		
	
		
playControl = ->
	   $('#jquery_jplayer_1').bind 'click', (e) ->
	    if $('.jp-play').is ':visible'
	      $(this).jPlayer('play') 
	    else
	      $(this).jPlayer('pause')