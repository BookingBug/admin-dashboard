'use strict';

angular.module('BBAdminApp.check-in', [])
###
* @ngdoc service
* @module BBAdminApp.check-in
* @name CheckInParentState
*
* @description
* Returns the parent state in case this module is to be used
* independently from the main admin app
###

###
* @ngdoc service
* @module BBAdminApp.check-in
* @name CheckInParentStateProvider
*
* @description
* Provider that allows the parent state to be overwritten
*
* @example
  <example>
  angular.module('ExampleModule').config ['CheckInParentStateProvider', (CheckInParentStateProvider) ->
    CheckInParentStateProvider.setParent('admin')
  ]
  </example>
###
angular.module('BBAdminApp.check-in').provider 'CheckInParentState', [ ->
  parentState = 'admin'

  @setParent = (parent) ->
    parentState = parent
    return

  @$get =  ->
    parentState

  return
]

angular.module('BBAdminApp.check-in')
.config ['$stateProvider', 'CheckInParentStateProvider', ($stateProvider, CheckInParentStateProvider) ->
  prefix = CheckInParentStateProvider.$get() + (if CheckInParentStateProvider.$get() then '.' else '')

  $stateProvider
  .state prefix + 'check-in', {
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