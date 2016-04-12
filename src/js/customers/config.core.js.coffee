'use strict';

angular.module('BBAdminApp.customers', [
  'BBAdminApp.customers.services',
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