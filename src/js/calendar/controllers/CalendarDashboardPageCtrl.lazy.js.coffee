'use strict';

###
* @ngdoc controller
* @name BBAdminApp.calendar.controllers.controller:CalendarDashboardPageCtrl
#
* @description
* Controller for the calendar dashboard page
###
angular.module('BBAdminApp.calendar.controllers')
.controller 'CalendarDashboardPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar Dashboard Controller'
]