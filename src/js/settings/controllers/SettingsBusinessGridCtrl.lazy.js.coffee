'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsBusinessGridCtrl
#
* @description
* Controller for the business-settings grid page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsBusinessGridCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Business Grid Controller'
]