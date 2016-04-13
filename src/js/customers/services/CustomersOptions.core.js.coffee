'use strict'

###
* @ngdoc service
* @name BBAdminApp.customers.services.service:CustomersOptions
*
* @description
* Returns a set of Calendar configuration options
###

###
* @ngdoc service
* @name BBAdminApp.customers.services.service:CustomersOptionsProvider
*
* @description
* Provider
*
* @example
  <example>
  angular.module('ExampleModule').config ['CustomersOptionsProvider', (CustomersOptionsProvider) ->
    CustomersOptionsProvider.setOption('parent_state', 'randomState')
  ]
  </example>
###
angular.module('BBAdminApp.customers.services').provider 'CustomersOptions', [ ->
  # This list of customers options is meant to grow
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