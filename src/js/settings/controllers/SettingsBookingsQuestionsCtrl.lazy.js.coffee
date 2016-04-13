'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsBookingsQuestionsCtrl
#
* @description
* Controller for the bookings-settings questions page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsBookingsQuestionsCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Bookings Questions Controller'
]