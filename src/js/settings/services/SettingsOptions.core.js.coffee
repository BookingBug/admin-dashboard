'use strict'

###
* @ngdoc service
* @name BBAdminApp.settings.services.service:SettingsOptions
*
* @description
* Returns a set of Calendar configuration options
###

###
* @ngdoc service
* @name BBAdminApp.settings.services.service:SettingsOptionsProvider
*
* @description
* Provider
*
* @example
  <example>
  angular.module('ExampleModule').config ['SettingsOptionsProvider', (SettingsOptionsProvider) ->
    SettingsOptionsProvider.setOption('parent_state', 'randomState')
  ]
  </example>
###
angular.module('BBAdminApp.settings.services').provider 'SettingsOptions', [ ->
# This list of settings options is meant to grow
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