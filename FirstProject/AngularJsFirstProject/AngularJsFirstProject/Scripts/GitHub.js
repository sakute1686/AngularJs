/// <reference path="angular.js" />

(function ()
{
    var gitHub = function ($http)
    {
        var getUserDetails = function (username)
        {
            return $http.get("https://api.github.com/users/" + username)
                        .then(function (response)
                        {
                            return response.data;
                        });
        };

        var getRepositoryList = function (user)
        {
            return $http.get(user.repos_url)
                        .then(function (response)
                        {
                            return response.data;
                        });
        };

        return {
            getUser: getUserDetails,
            getRepos: getRepositoryList
        };
    };

    var module = angular.module("myApp");
    module.factory("gitHub", gitHub);

}());