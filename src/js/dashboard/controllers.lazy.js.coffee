'use strict';

angular.module('BBAdminApp.dashboard.controllers', [
  'BBAdminApp.dashboard.services'
])
.controller 'DashboardPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Dashboard Controller'
]