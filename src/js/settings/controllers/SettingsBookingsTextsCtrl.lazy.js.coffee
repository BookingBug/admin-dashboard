'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsBookingsTextsCtrl
#
* @description
* Controller for the bookings-settings texts page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsBookingsTextsCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Bookings Texts Controller'
]