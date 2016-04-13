'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:LoginPageCtrl
#
* @description
* Controller for the settings pages container
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsPageCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Controller'
]