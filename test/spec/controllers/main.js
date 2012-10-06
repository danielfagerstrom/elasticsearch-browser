'use strict';

describe('Controller: MainCtrl', function() {

  // load the controller's module
  beforeEach(module('elasticsearchBrowserApp'));

  var MainCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function($controller) {
    scope = {};
    MainCtrl = $controller('MainCtrl', {
      $scope: scope
    });
  }));

  it('should attach an object of indices to the scope', function() {
    expect(scope.indices.prices).toBeDefined();
    expect(scope.indices.lunch).toBeDefined();
    expect(scope.indices.social).toBeDefined();
  });
});
