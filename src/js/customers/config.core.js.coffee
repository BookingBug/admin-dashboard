'use strict';

angular.module('BBAdminApp.customers', [])

###
* @ngdoc service
* @module BBAdminApp.customers
* @name CustomersParentState
*
* @description
* Returns the parent state in case this module is to be used
* independently from the main admin app
###

###
* @ngdoc service
* @module BBAdminApp.customers
* @name CustomersParentStateProvider
*
* @description
* Provider that allows the parent state to be overwritten
*
* @example
  <example>
  angular.module('ExampleModule').config ['CustomersParentStateProvider', (CustomersParentStateProvider) ->
    CustomersParentStateProvider.setParent('admin')
  ]
  </example>
###
angular.module('BBAdminApp.customers').provider 'CustomersParentState', [ ->
  parentState = 'admin'

  @setParent = (parent) ->
    parentState = parent
    return

  @$get =  ->
    parentState

  return
]

angular.module('BBAdminApp.customers')
.config ['$stateProvider', 'CustomersParentStateProvider', ($stateProvider, CustomersParentStateProvider) ->
  prefix = CustomersParentStateProvider.$get() + (if CustomersParentStateProvider.$get() then '.' else '')

  $stateProvider
  .state prefix + 'customers', {
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