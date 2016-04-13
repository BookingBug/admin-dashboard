'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsBusinessServicesCtrl
#
* @description
* Controller for the business-settings services page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsBusinessServicesCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Business Services Controller'
]