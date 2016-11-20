var app = angular.module("EthereumGarant", ['ngRoute']);

app.config(function($routeProvider) {
    $routeProvider
        .when("/", {
            templateUrl: 'apps/dashboard/views/dashboard.html',
            controller: 'DashboardCtrl'
        })
        .when("/step1", {
            templateUrl: 'apps/dashboard/views/step1.html',
            controller: 'DashboardStep1Ctrl'
        })
        .when("/step2", {
            templateUrl: 'apps/dashboard/views/step2.html',
            controller: 'DashboardStep2Ctrl'
        })
        .otherwise('/');
});