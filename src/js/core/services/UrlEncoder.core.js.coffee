'use strict'

###
* @ngdoc service
* @name BBAdminApp.services.service:UrlEncoder
*
* @description
* UrlEncoder
*   Converts a regular object into the application/x-www-form-urlencoded format
*   Used to properly encode the body of POST and PUT requests
###

###
* @ngdoc service
* @name BBAdminApp.services.service:UrlEncoderProvider
*
* @description
* Provider
*
* @example
  <example>
  angular.module('ExampleModule').config ['$httpProvider', 'UrlEncoderProvider', ($httpProvider, UrlEncoderProvider) ->
    # Override $http service's default transformRequest
    $httpProvider.defaults.transformRequest = [ (data) ->
      if angular.isObject(data) and String(data) != '[object File]' then UrlEncoderProvider.encode(data) else data
    ]
  ]
  </example>
###
angular.module('BBAdminApp.services').provider 'UrlEncoder', [ ->
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