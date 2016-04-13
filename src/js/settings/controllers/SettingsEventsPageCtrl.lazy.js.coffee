'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsEventsPageCtrl
#
* @description
* Controller for the events-settings pages container
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsEventsPageCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Events Controller'

  $scope.state = $state;
]