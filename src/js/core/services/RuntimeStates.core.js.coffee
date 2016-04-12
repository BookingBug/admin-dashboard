'use strict'

###
* @ngdoc service
* @name BBAdminApp.services.service:RuntimeStates
*
* @description
* Returns an instance of $stateProvider that allows late state binding (on runtime)
###

###
* @ngdoc service
* @name BBAdminApp.services.service:RuntimeStatesProvider
*
* @description
* Provider
*
* @example
  <example>
  angular.module('ExampleModule').config ['RuntimeStatesProvider', '$stateProvider', (RuntimeStatesProvider, $stateProvider) ->
    RuntimeStatesProvider.setProvider($stateProvider)
  ]
  </example>
###
angular.module('BBAdminApp.services').provider 'RuntimeStates', ['$stateProvider', ($stateProvider)->
  stateProvider  = $stateProvider
  @setProvider = (provider)->
    stateProvider = provider
  @$get = ->
    stateProvider
  return
]