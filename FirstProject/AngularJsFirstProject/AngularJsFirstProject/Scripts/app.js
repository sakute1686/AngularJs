/// <reference path="angular.js" />
/// <reference path="angular-route.js" />

(function ()
{
    var app = angular.module("myApp", ["ngRoute"])

    app.config(function ($routeProvider)
    {
        $routeProvider
            .when("/", {
                templateUrl: "home/main",
                controller: "MainController"
            })
            .when("/user/:username", {
                templateUrl: "home/about",
                controller: "UserController"
            })
        .otherwise({redirectTo:"/"});
    });


}());