"use strict"

# Declare app level module which depends on filters, and services
@elasticsearchBrowserApp = @angular.module("elasticsearchBrowserApp", [])
  .config(["$routeProvider", ($routeProvider) ->
    $routeProvider.when("/",
      templateUrl: "views/main.html"
      controller: "MainCtrl"
    ).otherwise redirectTo: "/"
  ])
