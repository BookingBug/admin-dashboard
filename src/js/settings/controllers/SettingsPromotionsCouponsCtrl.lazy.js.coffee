'use strict';

###
* @ngdoc controller
* @name BBAdminApp.settings.controllers.controller:SettingsPromotionsCouponsCtrl
#
* @description
* Controller for the promotions-settings coupons page
###
angular.module('BBAdminApp.settings.controllers')
.controller 'SettingsPromotionsCouponsCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Promotions Coupons Controller'
]