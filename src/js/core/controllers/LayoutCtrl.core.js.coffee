'use strict'

angular.module('BBAdminApp.controllers')
.controller 'LayoutCtrl',['$rootScope', '$scope', '$state', ($rootScope, $scope, $state) ->

#This is used in the layout to identify active parent states in the various menus
  $scope.isState = (states)->
    return $state.includes states

  console.log 'Layout Controller'
]