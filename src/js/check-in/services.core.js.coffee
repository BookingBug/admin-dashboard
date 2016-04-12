'use strict'

angular.module('BBAdminApp.check-in.services', [])
###
* @ngdoc service
* @name BBAdminApp.check-in.services.service:CheckInOptions
*
* @description
* Returns a set of Calendar configuration options
###

###
* @ngdoc service
* @name BBAdminApp.check-in.services.service:CheckInOptionsProvider
*
* @description
* Provider
*
* @example
  <example>
  angular.module('ExampleModule').config ['CheckInOptionsProvider', (CheckInOptionsProvider) ->
    CheckInOptionsProvider.setOption('parent_state', 'randomState')
  ]
  </example>
###
angular.module('BBAdminApp.check-in.services').provider 'CheckInOptions', [ ->
# This list of check-in options is meant to grow
  options = {
    use_default_states : true
    parent_state       : 'admin',
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