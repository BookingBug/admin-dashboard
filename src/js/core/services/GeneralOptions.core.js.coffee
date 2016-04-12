'use strict'

###
* @ngdoc service
* @name BBAdminApp.services.service:GeneralOptions
*
* @description
* Returns a set of General configuration options
###

###
* @ngdoc service
* @name BBAdminApp.services.service:GeneralOptionsProvider
*
* @description
* Provider
*
* @example
  <example>
  angular.module('ExampleModule').config ['GeneralOptionsProvider', (GeneralOptionsProvider) ->
    GeneralOptionsProvider.setOption('option', 'value')
  ]
  </example>
###
angular.module('BBAdminApp.services').provider 'GeneralOptions', [ ->
  # This list of options is meant to grow
  options = {
    api_url: 'http://localhost:3000',
    sso_token: null,
    company_id: null
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