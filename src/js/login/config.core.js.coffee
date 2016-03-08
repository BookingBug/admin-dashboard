'use strict';

angular.module('BBAdminApp.login', [])
.config ['$ocLazyLoadProvider', ($ocLazyLoadProvider) ->
  $ocLazyLoadProvider.config {
    debug: true
  }
]
.config ['$stateProvider', ($stateProvider) ->
  $stateProvider.state 'login', {
    url         : '/login',
    templateUrl : '/tpls/login.html',
    controller  : 'LoginPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-login.min.js');
      ]
    }
  }
]