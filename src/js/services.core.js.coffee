'use strict'

# Core services
angular.module('BBAdminApp.services', [])
# UrlEncoder
#   Converts a regular object into the application/x-www-form-urlencoded format
#   Used to properly encode the body of POST and PUT requests
.provider 'UrlEncoder', [ ->
  @$get = [ ->
    {
      encode : (obj) ->
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
    }
  ]

  return
]