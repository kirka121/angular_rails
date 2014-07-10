App.controller 'ScreencastsCtrl', ['$scope', 'Screencast', ($scope, Screencast) ->
  $scope.screencasts = Screencast.query ->
  	$scope.selectedScreencast = $scope.screencasts[0]
  	$scope.selectedRow = 0

  $scope.selectedRow = null
  $scope.selectedScreencast = null

  $scope.showScreencast = (screencast, row) ->
  	$scope.selectedScreencast = screencast 
  	$scope.selectedRow = row
]