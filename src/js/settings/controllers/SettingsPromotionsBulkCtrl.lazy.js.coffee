'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsPromotionsBulkCtrl
#
* @description
* Controller for the promotions-settings bulk page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsPromotionsBulkCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Promotions Bulk Controller'
]