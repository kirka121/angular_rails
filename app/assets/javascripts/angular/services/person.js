app.factory('Person', ['$resource', function($resource) {
  function Person() {
    this.service = $resource('/api/people/:personid', {personid: '@id'});
  };
  Person.prototype.all = function() {
    return this.service.query();
  };
  return new Person;
}]);