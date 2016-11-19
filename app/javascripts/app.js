var app = angular.module("EthereumGarant", ['ngRoute']);

app.config(function($routeProvider) {
    $routeProvider
        .when("/", {
            templateUrl: 'apps/dashboard/views/dashboard.html',
            controller: 'DashboardCtrl'
        })
        .otherwise('/');
});