@elasticsearchBrowserApp.controller "DocumentCtrl", ($scope, $routeParams, $http) ->

  $scope.index = index = $routeParams.index
  $scope.type = type = $routeParams.type
  $scope.id = id = $routeParams.id

  $scope.showFields = true

  $http.get("http://localhost:9200/#{index}/#{type}/_mapping")
    .success((data) ->
      $scope.properties = for name, mapping of data[type].properties
        name: name
        mapping: mapping
        active: false
      #console.log $scope.properties
    )

  $http.get("http://localhost:9200/#{index}/#{type}/#{id}")
    .success((data) ->
      $scope.document = data._source
      console.log $scope.document
    )
