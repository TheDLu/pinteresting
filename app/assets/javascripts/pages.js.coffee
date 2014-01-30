# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('.carousel').carousel({
	interval: 1000
})

$ ->
	$('.square')

		.draggable({
		containment: "#containment-wrapper"
		})
		
		.resizable( {
		minWidth: 200,
		maxWidth: 350,
		aspectRatio: true,
	})

	$('.square').draggable
		start: (event, ui) ->
			console.log("start dragging "+ ui.offset.left + " " + ui.offset.top)

		stop: (event, ui) ->
			xPos = ui.offset.left
			yPos = ui.offset.top

			console.log("stop dragging "+ ui.offset.left + " " + ui.offset.top)

			url = '/pins/' + $(this).data('id') + '?x_position=' + xPos + '&y_position=' + yPos + '&format=js'

			console.log url

			$.ajax
  			url: url
  			type: "PUT"
  			beforeSend: (xhr) -> 
  				xhr.setRequestHeader "X-CSRF-Token", $("meta[name=\"csrf-token\"]").attr("content")

	$('.square').resizable
		start: (event, ui) ->
			console.log("start resizing " + $(ui.element).width() + " " + $(ui.element).height())

		stop: (event, ui) ->
			wDim = $(ui.element).width()
			hDim = $(ui.element).height()
			
			console.log("stop resizing " + $(ui.element).width() + " " + $(ui.element).height())

			$.post '/pins'