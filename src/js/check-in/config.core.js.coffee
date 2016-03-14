'use strict';

angular.module('BBAdminApp.check-in', [])
.config ['$stateProvider', ($stateProvider) ->
  $stateProvider
  .state 'admin.check-in', {
    url         : 'check-in',
    templateUrl : '/tpls/check-in.html',
    controller  : 'CheckInPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-check-in.min.js');
      ]
    }
  }
]