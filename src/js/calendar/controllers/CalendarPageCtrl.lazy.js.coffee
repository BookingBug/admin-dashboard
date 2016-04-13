'use strict';

###
* @ngdoc controller
* @name BBAdminApp.calendar.controllers.controller:CalendarPageCtrl
#
* @description
* Controller for the calendar parent container
###
angular.module('BBAdminApp.calendar.controllers')
.controller 'CalendarPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar Controller'
]