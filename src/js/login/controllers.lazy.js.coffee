'use strict';

angular.module('BBAdminApp.login.controllers', [])
.controller 'LoginPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Login Controller'
]