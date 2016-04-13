'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsEventsTemplatesCtrl
#
* @description
* Controller for the events-settings event templates page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsEventsTemplatesCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Events Templates Controller'
]