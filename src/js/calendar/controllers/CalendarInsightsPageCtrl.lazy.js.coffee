'use strict';

###
* @ngdoc controller
* @name BBAdminApp.calendar.controllers.controller:CalendarInsightsPageCtrl
#
* @description
* Controller for the calendar insights page
###
angular.module('BBAdminApp.calendar.controllers')
.controller 'CalendarInsightsPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar insights Controller'
]