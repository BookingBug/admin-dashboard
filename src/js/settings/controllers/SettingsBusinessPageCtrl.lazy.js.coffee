'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsBusinessPageCtrl
#
* @description
* Controller for the business-settings pages container
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsBusinessPageCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Business Controller'

  $scope.state = $state;
]