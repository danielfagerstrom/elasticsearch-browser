@elasticsearchBrowserApp.controller "MainCtrl", ($scope, $http) ->
  
  $http.get("http://localhost:9200/_status")
    .success((data) ->
      $scope.indices = for name, stats of data.indices
        name: name
        primary_size: stats.index.primary_size
        num_docs: stats.docs.num_docs
        max_doc: stats.docs.max_doc
        deleted_docs: stats.docs.deleted_docs
    )
      
  $scope.orderProp = '$index'

  $scope.doSort = (field) ->
    if $scope.orderProp is field
      $scope.reverse=!$scope.reverse
    else
      $scope.reverse = false
    $scope.orderProp=field
