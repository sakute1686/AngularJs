/// <reference path="angular.js" />
///https://api.github.com/users/sakute1686
(function ()
{
    var app = angular.module("myApp")
    app.controller("UserController", function ($scope, gitHub, $routeParams)
                {
                    /// on error method
                    var onError = function (reason)
                    {
                        $scope.error = "Could not fetch data, please try again.";
                        $scope.errorDetails = reason.errorDetails;
                    };

                    /// on User Details success method
                    var onUserComplete = function (data)
                    {
                        $scope.user = data;
                        //Custome Service Call
                        gitHub.getRepos($scope.user).then(onReposComplete, onError);
                    };

                    /// on Repos success method
                    var onReposComplete = function (data)
                    {
                        $scope.repos = data;
                    };
                    $scope.username = $routeParams.username;
                    $scope.repoSortOrder = "-stargazers_count";
                    $scope.repoTotalCount = 5;
                    gitHub.getUser($scope.username).then(onUserComplete, onError);

                });
}());