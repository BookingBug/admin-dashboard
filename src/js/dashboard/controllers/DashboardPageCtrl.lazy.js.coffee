'use strict';

###
* @ngdoc controller
* @name BBAdminApp.dashboard.controllers.controller:DashboardPageCtrl
#
* @description
* Controller for the dashboard page
###
angular.module('BBAdminApp.dashboard.controllers')
.controller 'DashboardPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Dashboard Controller'
]