'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsEventsRecurringCtrl
#
* @description
* Controller for the events-settings recurring events page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsEventsRecurringCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Events Recurring Controller'
]