'use strict'

###
* @ngdoc service
* @name BBAdminApp.dashboard.services.service:DashboardOptions
*
* @description
* Returns a set of Calendar configuration options
###

###
* @ngdoc service
* @name BBAdminApp.dashboard.services.service:DashboardOptionsProvider
*
* @description
* Provider
*
* @example
  <example>
  angular.module('ExampleModule').config ['DashboardOptionsProvider', (DashboardOptionsProvider) ->
    DashboardOptionsProvider.setOption('parent_state', 'randomState')
  ]
  </example>
###
angular.module('BBAdminApp.dashboard.services').provider 'DashboardOptions', [ ->
  # This list of dashboard options is meant to grow
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