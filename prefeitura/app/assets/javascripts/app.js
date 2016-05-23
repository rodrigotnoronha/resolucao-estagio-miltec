var app = angular.module('rails-angular-app',['ui.router', 'templates', 'app.controllers','app.services']);

app.config(function($stateProvider, $urlRouterProvider) {
  //
  // For any unmatched url, redirect to /state1
  $urlRouterProvider.otherwise("/");
  //
  // Now set up the states
  $stateProvider
    .state('home', {
      url: "/",
      templateUrl: "home/home.html",
      controller: 'HomeCtrl'
  });
});
