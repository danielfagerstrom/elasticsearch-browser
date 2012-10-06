@elasticsearchBrowserApp.controller "MainCtrl", ($scope) ->
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
      
  $scope.indices = for name, stats of indices
    name: name
    primary_size: stats.index.primary_size
    num_docs: stats.docs.num_docs
    max_doc: stats.docs.max_doc
    deleted_docs: stats.docs.deleted_docs

  $scope.orderProp = '$index'

  $scope.doSort = (field) ->
    if $scope.orderProp is field
      $scope.reverse=!$scope.reverse
    else
      $scope.reverse = false
    $scope.orderProp=field
