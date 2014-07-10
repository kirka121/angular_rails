App.directive 'flowPlayer', ->
	(scope, element, attrs) ->

		#trigger when the selectedScreencast function is called
		# with a screencast
		scope.$watch 'selectedScreencast', (screencast) ->
			if screencast

				element.flowplayer
					playlist: [[mp4: screencast.video_url]]
					ratio: 9/14