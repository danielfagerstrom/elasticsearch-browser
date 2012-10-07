@elasticsearchBrowserApp.controller "TypeCtrl", ($scope, $routeParams, $http) ->

  $scope.index = index = $routeParams.index
  $scope.type = type = $routeParams.type

  $http.get("http://localhost:9200/#{index}/#{type}/_mapping")
    .success((data) ->
      $scope.properties = for name, mapping of data[type].properties
        name: name
        mapping: mapping
      #console.log $scope.properties
    )

  $http.get("http://localhost:9200/#{index}/#{type}/_search")
    .success((data) ->
      $scope.hits = for hit in data.hits.hits
        _id: hit._id
        _score: hit._score
        _source: hit._source
      #console.log $scope.hits
    )
