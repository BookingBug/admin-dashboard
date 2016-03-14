'use strict';

angular.module('BBAdminApp.settings.controllers', [
  'BBAdminApp.settings.services'
])
.controller 'SettingsPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Settings Controller'
]