'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsEventsGroupsCtrl
#
* @description
* Controller for the events-settings groups page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsEventsGroupsCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Events Groups Controller'
]