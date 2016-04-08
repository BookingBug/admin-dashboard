'use strict';

angular.module('BBAdminApp.settings', [])
###
* @ngdoc service
* @module BBAdminApp.settings
* @name SettingsParentState
*
* @description
* Returns the parent state in case this module is to be used
* independently from the main admin app
###

###
* @ngdoc service
* @module BBAdminApp.settings
* @name SettingsParentStateProvider
*
* @description
* Provider that allows the parent state to be overwritten
*
* @example
  <example>
  angular.module('ExampleModule').config ['SettingsParentStateProvider', (SettingsParentStateProvider) ->
    SettingsParentStateProvider.setParent('admin')
  ]
  </example>
###
angular.module('BBAdminApp.settings').provider 'SettingsParentState', [ ->
  parentState = 'admin'

  @setParent = (parent) ->
    parentState = parent
    return

  @$get =  ->
    parentState

  return
]

angular.module('BBAdminApp.settings')
.config ['$stateProvider', 'SettingsParentStateProvider', ($stateProvider, SettingsParentStateProvider) ->
  prefix = SettingsParentStateProvider.$get() + (if SettingsParentStateProvider.$get() then '.' else '')

  $stateProvider
  .state  prefix + 'settings', {
    url         : 'settings',
    templateUrl : '/tpls/settings/index.html',
    controller  : 'SettingsPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-settings.min.js');
      ]
    },
    deepStateRedirect: {
      default: {
        state:  prefix + 'settings.business'
      }
    }
  }
  # Business Settings START
  .state  prefix + 'settings.business', {
    url         : '/business',
    templateUrl : '/tpls/settings/business/index.html',
    controller  : 'SettingsBusinessPageCtrl',
    deepStateRedirect: {
      default: {
        state:  prefix + 'settings.business.people'
      }
    }
  }
  .state  prefix + 'settings.business.people', {
    url         : '/people',
    templateUrl : '/tpls/settings/business/people.html',
    controller  : 'SettingsBusinessPeopleCtrl',
  }
  .state  prefix + 'settings.business.resources', {
    url         : '/resources',
    templateUrl : '/tpls/settings/business/resources.html',
    controller  : 'SettingsBusinessResourcesCtrl',
  }
  .state  prefix + 'settings.business.services', {
    url         : '/services',
    templateUrl : '/tpls/settings/business/services.html',
    controller  : 'SettingsBusinessServicesCtrl',
  }
  .state  prefix + 'settings.business.grid', {
    url         : '/grid',
    templateUrl : '/tpls/settings/business/grid.html',
    controller  : 'SettingsBusinessGridCtrl',
  }
  # Business Settings STOP
  # Events Settings START
  .state  prefix + 'settings.events', {
    url         : '/events',
    templateUrl : '/tpls/settings/events/index.html',
    controller  : 'SettingsEventsPageCtrl',
    deepStateRedirect: {
      default: {
        state:  prefix + 'settings.events.courses'
      }
    }
  }
  .state  prefix + 'settings.events.courses', {
    url         : '/courses',
    templateUrl : '/tpls/settings/events/courses.html',
    controller  : 'SettingsEventsCoursesCtrl',
  }
  .state  prefix + 'settings.events.single', {
    url         : '/single',
    templateUrl : '/tpls/settings/events/single.html',
    controller  : 'SettingsEventsSingleCtrl',
  }
  .state  prefix + 'settings.events.recurring', {
    url         : '/recurring',
    templateUrl : '/tpls/settings/events/recurring.html',
    controller  : 'SettingsEventsRecurringCtrl',
  }
  .state  prefix + 'settings.events.groups', {
    url         : '/groups',
    templateUrl : '/tpls/settings/events/groups.html',
    controller  : 'SettingsEventsGroupsCtrl',
  }
  .state  prefix + 'settings.events.templates', {
    url         : '/templates',
    templateUrl : '/tpls/settings/events/templates.html',
    controller  : 'SettingsEventsTemplatesCtrl',
  }
  # Events Settings STOP
  # Promotions Settings START
  .state  prefix + 'settings.promotions', {
    url         : '/promotions',
    templateUrl : '/tpls/settings/promotions/index.html',
    controller  : 'SettingsPromotionsPageCtrl',
    deepStateRedirect: {
      default: {
        state:  prefix + 'settings.promotions.deals'
      }
    }
  }
  .state  prefix + 'settings.promotions.deals', {
    url         : '/deals',
    templateUrl : '/tpls/settings/promotions/deals.html',
    controller  : 'SettingsPromotionsDealsCtrl',
  }
  .state  prefix + 'settings.promotions.coupons', {
    url         : '/coupons',
    templateUrl : '/tpls/settings/promotions/coupons.html',
    controller  : 'SettingsPromotionsCouponsCtrl',
  }
  .state  prefix + 'settings.promotions.bulk', {
    url         : '/bulk',
    templateUrl : '/tpls/settings/promotions/bulk.html',
    controller  : 'SettingsPromotionsBulkCtrl',
  }
  .state  prefix + 'settings.promotions.packages', {
    url         : '/packages',
    templateUrl : '/tpls/settings/promotions/packages.html',
    controller  : 'SettingsPromotionsPackagesCtrl',
  }
  # Promotions Settings STOP
  # Booking Settings START
  .state  prefix + 'settings.bookings', {
    url         : '/bookings',
    templateUrl : '/tpls/settings/bookings/index.html',
    controller  : 'SettingsBookingsPageCtrl',
    deepStateRedirect: {
      default: {
        state:  prefix + 'settings.bookings.questions'
      }
    }
  }
  .state  prefix + 'settings.bookings.questions', {
    url         : '/questions',
    templateUrl : '/tpls/settings/bookings/questions.html',
    controller  : 'SettingsBookingsQuestionsCtrl',
  }
  .state  prefix + 'settings.bookings.texts', {
    url         : '/texts',
    templateUrl : '/tpls/settings/bookings/texts.html',
    controller  : 'SettingsBookingsTextsCtrl',
  }
  .state  prefix + 'settings.bookings.addresses', {
    url         : '/addresses',
    templateUrl : '/tpls/settings/bookings/addresses.html',
    controller  : 'SettingsBookingsAddressesCtrl',
  }
  .state  prefix + 'settings.bookings.images', {
    url         : '/images',
    templateUrl : '/tpls/settings/bookings/images.html',
    controller  : 'SettingsBookingsImagesCtrl',
  }
  # Booking Settings STOP
]