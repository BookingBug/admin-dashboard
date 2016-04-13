'use strict';

###
* @ngdoc controller
* @name BBAdminApp.calendar.controllers.controller:CalendarUpcomingPageCtrl
#
* @description
* Controller for the calendar upcoming events page
###
angular.module('BBAdminApp.calendar.controllers')
.controller 'CalendarUpcomingPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar Upcoming Controller'
]