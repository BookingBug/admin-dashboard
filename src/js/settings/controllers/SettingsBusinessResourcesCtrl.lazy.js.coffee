'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsBusinessResourcesCtrl
#
* @description
* Controller for the business-settings Resources page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsBusinessResourcesCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Business Resources Controller'
]