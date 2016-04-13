'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsEventsCoursesCtrl
#
* @description
* Controller for the events-settings courses page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsEventsCoursesCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Events Courses Controller'
]