'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsPromotionsPackagesCtrl
#
* @description
* Controller for the promotions-settings packages page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsPromotionsPackagesCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Promotions Packages Controller'
]