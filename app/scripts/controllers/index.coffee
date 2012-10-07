@elasticsearchBrowserApp.controller "IndexCtrl", ($scope, $routeParams, $http) ->

  $scope.index = index = $routeParams.index

  $http.get("http://localhost:9200/#{index}/_mapping")
    .success((data) ->
      $scope.types = for name, mapping of data[index]
        name: name
        mapping: mapping
    )
