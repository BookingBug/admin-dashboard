'use strict';

###
* @ngdoc controller
* @name BBAdminApp.login.controllers.controller:LoginPageCtrl
#
* @description
* Controller for the login page
###
angular.module('BBAdminApp.login.controllers')
.controller 'LoginPageCtrl',['$rootScope', '$scope', '$state','toastr','halClient', 'ApiEndPoints', ($rootScope, $scope, $state, toastr, halClient, ApiEndPoints) ->
  console.log 'Login Controller'

  $scope.submit = (isValid) ->
    if isValid
      $scope.formErrors = [];

      #      request =
      #        method: 'POST',
      #        url: '/cms-api/auth/login',
      #        data:
      #          username : $scope.user.username
      #          password : $scope.user.password

      halClient.$post(ApiEndPoints.LOGIN, {}, {email : $scope.user.username, password : $scope.user.password}).then (login) =>
        console.log login
      , (err) =>
        console.log err

      console.log $scope.user.username
      console.log $scope.user.password
]