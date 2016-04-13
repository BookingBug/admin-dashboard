'use strict';

# Placeholder definitions
angular.module('BBAdminApp.customers.controllers', [])
angular.module('BBAdminApp.customers.services', [])
angular.module('BBAdminApp.customers.directives', [])

angular.module('BBAdminApp.customers', [
  'BBAdminApp.customers.controllers',
  'BBAdminApp.customers.services',
  'BBAdminApp.customers.directives'
])
.run ['RuntimeStates', 'CustomersOptions', 'TemplateService', (RuntimeStates, CustomersOptions, TemplateService) ->
  # Choose to opt out of the default Customers routing
  if CustomersOptions.use_default_states
    prefix = CustomersOptions.parent_state + (if CustomersOptions.parent_state then '.' else '')

    RuntimeStates
    .state prefix + 'customers', {
      url              : 'customers',
      template         : ()->
        return TemplateService.get('/tpls/customers/index.html')
      controller       : 'CustomersPageCtrl',
      resolve          : {
        loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
          $ocLazyLoad.load('js/bb-admin-customers.min.js');
        ]
      }
    }
]