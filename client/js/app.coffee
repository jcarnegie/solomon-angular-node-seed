define ["angular"], (angular) ->

    # setup the app
    angular.module("myApp", [
        "ngRoute"
    ]).
    config ["$locationProvider", ($locationProvider) ->
        # add app config here
        $locationProvider.html5Mode(true).hashPrefix "!"
    ]