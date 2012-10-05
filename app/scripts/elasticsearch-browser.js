'use strict';

// Declare app level module which depends on filters, and services
var elasticsearchBrowserApp = angular.module('elasticsearchBrowserApp', [])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  }]);
