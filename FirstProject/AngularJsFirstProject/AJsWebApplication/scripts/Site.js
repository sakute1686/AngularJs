/// <reference path="angular.js" />

angular.module('copyExample', [])
   .controller('ExampleController', ['$scope', function ($scope)
   {
       $scope.Message = "Hello AngularJs!!";
   }]);