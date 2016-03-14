'use strict';

angular.module('BBAdminApp.customers', [])
.config ['$stateProvider', ($stateProvider) ->
  $stateProvider
  .state 'admin.customers', {
    url         : 'customers',
    templateUrl : '/tpls/customers.html',
    controller  : 'CustomersPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-customers.min.js');
      ]
    }
  }
]