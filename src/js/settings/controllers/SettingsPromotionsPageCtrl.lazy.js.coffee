'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsPromotionsPageCtrl
#
* @description
* Controller for the promotions-settings pages container
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsPromotionsPageCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Promotions Controller'
]