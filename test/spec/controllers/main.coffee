describe "Controller: MainCtrl", ->
  
  indices = {
    "prices": {
      "index" : {
        "primary_size" : "430b",
        "primary_size_in_bytes" : 430,
        "size" : "430b",
        "size_in_bytes" : 430
      },
      "docs" : {
        "num_docs" : 0,
        "max_doc" : 0,
        "deleted_docs" : 0
      }
    },
    "lunch" : {
      "index" : {
        "primary_size" : "140.7kb",
        "primary_size_in_bytes" : 144097,
        "size" : "140.7kb",
        "size_in_bytes" : 144097
      },
      "docs" : {
        "num_docs" : 42,
        "max_doc" : 49,
        "deleted_docs" : 7
      }
    },
    "social" : {
      "index" : {
        "primary_size" : "1.6mb",
        "primary_size_in_bytes" : 1682340,
        "size" : "1.6mb",
        "size_in_bytes" : 1682340
      },
      "docs" : {
        "num_docs" : 409,
        "max_doc" : 409,
        "deleted_docs" : 0
      }
    }
  }

  # load the controller's module
  beforeEach module("elasticsearchBrowserApp")
  MainCtrl = undefined
  scope = undefined
  $httpBackend = undefined
  
  # Initialize the controller and a mock scope
  beforeEach inject((_$httpBackend_, $rootScope, $controller) ->
    $httpBackend = _$httpBackend_;
    $httpBackend.expectGET("http://localhost:9200/_status")
      .respond(indices: indices)
    scope = $rootScope.$new();
    MainCtrl = $controller("MainCtrl", $scope: scope)
  )
  it "should attach an object of indices to the scope", ->
    expect(scope.indices).toBeUndefined()
    $httpBackend.flush()
    expect(scope.indices.length).toBe 3


