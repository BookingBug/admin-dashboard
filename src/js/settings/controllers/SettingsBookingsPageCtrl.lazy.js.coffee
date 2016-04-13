'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsBookingsPageCtrl
#
* @description
* Controller for the bookings-settings pages container
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsBookingsPageCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Bookings Controller'
]