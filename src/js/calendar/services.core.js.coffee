'use strict'

angular.module('BBAdminApp.calendar.services', [])
###
* @ngdoc service
* @name BBAdminApp.calendar.services.service:CalendarOptions
*
* @description
* Returns a set of Calendar configuration options
###

###
* @ngdoc service
* @name BBAdminApp.calendar.services.service:CalendarOptionsProvider
*
* @description
* Provider
*
* @example
  <example>
  angular.module('ExampleModule').config ['CalendarOptionsProvider', (CalendarOptionsProvider) ->
    CalendarOptionsProvider.setOption('parent_state', 'randomState')
  ]
  </example>
###
angular.module('BBAdminApp.calendar.services').provider 'CalendarOptions', [ ->
# This list of calendar options is meant to grow
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