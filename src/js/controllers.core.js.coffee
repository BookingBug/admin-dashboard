'use strict'

# Core controllers
angular.module('BBAdminApp.controllers', [])
.controller 'AdminBaseCtrl',['$rootScope', '$scope', '$state', ($rootScope, $scope, $state) ->
  $scope.page = {
    sideMenuOn : true,
    boxed      : false
  }
]
.controller 'LayoutCtrl',['$rootScope', '$scope', '$state', ($rootScope, $scope, $state) ->

  #This is used in the layout to identify active parent states in the various menus
  $scope.isState = (states)->
    return $state.includes states

  console.log 'Layout Controller'
]
.controller 'NotFoundCtrl',['$rootScope', '$scope', '$state', ($rootScope, $scope, $state) ->

  console.log '404 Controller'
]