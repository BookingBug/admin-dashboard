'use strict'

# Core services
angular.module('BBAdminApp.services', [])
# UrlEncoder
#   Converts a regular object into the application/x-www-form-urlencoded format
#   Used to properly encode the body of POST and PUT requests
.provider 'UrlEncoder', [ ->
  encode = (obj) ->
    query = ''

    for name of obj
      value = obj[name]

      if value instanceof Array
        i = 0

        while i < value.length
          subValue = value[i]
          fullSubName = name + '[' + i + ']'
          innerObj = {}
          innerObj[fullSubName] = subValue
          query += param(innerObj) + '&'
          ++i

        if value.length == 0
          query += encodeURIComponent(name) + '=' + '&'

      else if value instanceof Object
        for subName of value
          subValue = value[subName]
          fullSubName = name + '[' + subName + ']'
          innerObj = {}
          innerObj[fullSubName] = subValue
          query += param(innerObj) + '&'

      else if value != undefined and value != null
        query += encodeURIComponent(name) + '=' + encodeURIComponent(value) + '&'

    if query.length then query.substr(0, query.length - 1) else query

  @encode = encode

  @$get = [ ->
    {
      encode : encode
    }
  ]

  return
]
.factory 'ApiEndPoints', [
  'EnvironmentSettings'
  (EnvironmentSettings) ->
    {
      LOGIN : EnvironmentSettings.api_url + '/api/v1/login/admin'
      LOGIN_SSO : EnvironmentSettings.api_url + '/api/v1/login/sso/:companyId'
    }
]

###
* @ngdoc service
* @name BBAdminApp.services.service:TemplateService
*
* @description
* Checks if a custom version of the requested template exists in the templateCache,
* otherwise returns the default version (which should be compiled with the module)
###
angular.module('BBAdminApp.services').factory 'TemplateService', [
  '$templateCache','$exceptionHandler',
  ($templateCache, $exceptionHandler) ->
    {
      get: (template)->
        if $templateCache.get(template)?
          return $templateCache.get(template)
        else if $templateCache.get('/default' + template)?
          return $templateCache.get('/default' + template)
        else
          $exceptionHandler(new Error('Template "' + template + '" not found'))
    }
]
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