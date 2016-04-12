'use strict';

angular.module('BBAdminApp.check-in.controllers', [
  'BBAdminCheckInTpls'
])
.controller 'CheckInPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Checkin Controller'
]