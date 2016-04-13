'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsEventsSingleCtrl
#
* @description
* Controller for the events-settings single event page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsEventsSingleCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Events Single Controller'
]