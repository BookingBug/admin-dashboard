'use strict'

###
* @ngdoc service
* @name BBAdminApp.login.services.service:LoginOptions
*
* @description
* Returns a set of Calendar configuration options
###

###
* @ngdoc service
* @name BBAdminApp.login.services.service:LoginOptionsProvider
*
* @description
* Provider
*
* @example
  <example>
  angular.module('ExampleModule').config ['LoginOptionsProvider', (LoginOptionsProvider) ->
    LoginOptionsProvider.setOption('parent_state', 'randomState')
  ]
  </example>
###
angular.module('BBAdminApp.login.services').provider 'LoginOptions', [ ->
# This list of login options is meant to grow
  options = {
    use_default_states : true
    parent_state       : null,
  }

  @setOption = (option, value) ->
    if options.hasOwnProperty(option)
      options[option] = value
    return

  @getOption = (option) ->
    if options.hasOwnProperty(option)
      return options[option]
    return
  @$get =  ->
    options

  return
]