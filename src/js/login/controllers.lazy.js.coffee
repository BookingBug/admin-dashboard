'use strict';

angular.module('BBAdminApp.login.controllers', [
  'BBAdminApp.login.services',
  'BBAdminLoginTpls'
])
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