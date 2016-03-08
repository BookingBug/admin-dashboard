'use strict';

angular.module('BBAdminApp.dashboard', [])
.config ['$ocLazyLoadProvider', ($ocLazyLoadProvider) ->
  $ocLazyLoadProvider.config {
    debug: true
  }
]
.config ['$stateProvider', ($stateProvider) ->
  $stateProvider.state 'dashboard', {
    url         : '/dashboard',
    templateUrl : '/tpls/dashboard.html',
    controller  : 'DashboardPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-dashboard.min.js');
      ]
    }
  }
]