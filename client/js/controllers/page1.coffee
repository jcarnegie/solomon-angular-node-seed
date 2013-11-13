define ["appModule"], (appModule) ->
    Page1Controller = ($scope, remote) ->
        _init = ->
            $scope.page = "page1"

            # gets data from a remote server
            remote.getData()
            .success (data) ->
                $scope.myData = data.message

        _init()

    # register the controller
    appModule.controller "Page1Controller", [
        "$scope"
        "remote"    
        Page1Controller
    ]