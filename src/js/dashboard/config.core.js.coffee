'use strict';

angular.module('BBAdminApp.dashboard', [])
.config ['$stateProvider', ($stateProvider) ->
  $stateProvider
  .state 'admin.dashboard', {
    url         : 'dashboard',
    templateUrl : '/tpls/dashboard.html',
    controller  : 'DashboardPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-dashboard.min.js');
      ]
    }
  }
]