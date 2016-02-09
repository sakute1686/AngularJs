/// <reference path="angular.js" />
///https://api.github.com/users/sakute1686
(function ()
{
    var app = angular.module("myApp", [])
                .controller("myCtrl", ["$scope", "$http", function ($scope, $http)
                {
                    $scope.firstName = "John";
                    $scope.lastName = "Doe";
                    $scope.username = "angular";
                    $scope.repoSortOrder = "-stargazers_count";
                    $scope.repoTotalCount = 10;

                    /// on success method
                    var onUserComplete = function (response)
                    {
                        $scope.user = response.data;
                        //API Call
                        $http.get($scope.user.repos_url)
                        .then(onReposComplete, onError);
                    };

                    /// on error method
                    var onError = function (reason)
                    {
                        $scope.error = "Could not fetch data, please try again.";
                        $scope.errorDetails = reason.errorDetails;
                    };

                    /// on Repos success method
                    var onReposComplete = function (response)
                    {
                        $scope.repos = response.data;
                    };

                    $scope.search = function (username)
                    {
                        //API Call
                        $http.get("https://api.github.com/users/" + username)
                        .then(onUserComplete, onError);
                    };
                }]);
}());