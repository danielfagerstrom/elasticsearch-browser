describe "Controller: MainCtrl", ->
  
  # load the controller's module
  beforeEach module("elasticsearchBrowserApp")
  MainCtrl = undefined
  scope = undefined
  
  # Initialize the controller and a mock scope
  beforeEach inject(($controller) ->
    scope = {}
    MainCtrl = $controller("MainCtrl",
      $scope: scope
    )
  )
  it "should attach an object of indices to the scope", ->
    expect(scope.indices.length).toBe 3


