'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsBusinessPeopleCtrl
#
* @description
* Controller for the business-setting people page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsBusinessPeopleCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Business People Controller'
]