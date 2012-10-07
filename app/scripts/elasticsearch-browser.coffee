# Declare app level module which depends on filters, and services
@elasticsearchBrowserApp = @angular.module("elasticsearchBrowserApp", [])
  .config(["$routeProvider", ($routeProvider) ->
    $routeProvider
    .when("/",
      templateUrl: "views/main.html"
      controller: "MainCtrl"
    ).when("/:index",
      templateUrl: "views/index.html"
      controller: "IndexCtrl"
    ).when("/:index/:type",
      templateUrl: "views/type.html"
      controller: "TypeCtrl"
    ).otherwise redirectTo: "/"
  ])
