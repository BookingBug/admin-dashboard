'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsBookingsAddressesCtrl
#
* @description
* Controller for the bookings-settings addresses page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsBookingsAddressesCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Bookings Addresses Controller'
]