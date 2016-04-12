'use strict'

angular.module('BBAdminApp.controllers')
.controller 'AdminBaseCtrl',['$rootScope', '$scope', '$state', ($rootScope, $scope, $state) ->
  $scope.page = {
    sideMenuOn : true,
    boxed      : false
  }
]