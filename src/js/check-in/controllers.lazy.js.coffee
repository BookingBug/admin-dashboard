'use strict';

angular.module('BBAdminApp.check-in.controllers', [
  'BBAdminApp.check-in.services'
])
.controller 'CheckInPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Checkin Controller'
]