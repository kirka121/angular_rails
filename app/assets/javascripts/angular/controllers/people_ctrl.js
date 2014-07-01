app.controller('PeopleCtrl', ['$scope', 'Person', function($scope, Person) {
  $scope.people = Person.all();
}]);