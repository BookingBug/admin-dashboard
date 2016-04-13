'use strict';

###
* @ngdoc controller
* @name BBAdminApp.calendar.controllers.controller:CalendarBulkPageCtrl
#
* @description
* Controller for the calendar bulk page
###
angular.module('BBAdminApp.calendar.controllers')
.controller 'CalendarBulkPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar Bulk Controller'
]