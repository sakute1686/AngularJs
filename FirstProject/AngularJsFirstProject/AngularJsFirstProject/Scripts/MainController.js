/// <reference path="angular.js" />
///https://api.github.com/users/sakute1686
(function ()
{
    var app = angular.module("myApp")
                .controller("MainController", function ($scope, $interval, $location)
                {
                    $scope.search = function (username)
                    {
                        if (countdownInterval)
                        {
                            $interval.cancel(countdownInterval);
                            $scope.countDown = null;
                        }
                        $location.path("user/" + username);
                    };

                    var decrementCountDown = function ()
                    {
                        $scope.countDown--;
                        if ($scope.countDown < 1)
                        {
                            $scope.search($scope.username);
                        }
                    };

                    var countdownInterval = null;
                    var startCountDown = function ()
                    {
                        countdownInterval = $interval(decrementCountDown, 1000, $scope.countDown);
                    }

                    $scope.username = "angular";
                    $scope.countDown = 5;
                    startCountDown();

                });
}());