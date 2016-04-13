'use strict';

###
* @ngdoc controller
* @name BBAdminApp.calendar.controllers.controller:CalendarSearchPageCtrl
#
* @description
* Controller for the calendar search page
###
angular.module('BBAdminApp.calendar.controllers')
.controller 'CalendarSearchPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar search Controller'
]