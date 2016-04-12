'use strict';

angular.module('BBAdminApp.settings', [
  'BBAdminApp.settings.services'
])
.run ['RuntimeStates', 'SettingsOptions', 'TemplateService', (RuntimeStates, SettingsOptions, TemplateService) ->
  # Choose to opt out of the default routing
  if SettingsOptions.use_default_states
    prefix = SettingsOptions.parent_state + (if SettingsOptions.parent_state then '.' else '')

    RuntimeStates
    .state  prefix + 'settings', {
      url        : 'settings',
      template   : ()->
        return TemplateService.get('/tpls/settings/index.html')
      controller : 'SettingsPageCtrl',
      resolve    : {
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
      url              : '/business',
      template         : ()->
        return TemplateService.get('/tpls/settings/business/index.html')
      controller       : 'SettingsBusinessPageCtrl',
      deepStateRedirect: {
        default: {
          state:  prefix + 'settings.business.people'
        }
      }
    }
    .state  prefix + 'settings.business.people', {
      url        : '/people',
      template   : ()->
        return TemplateService.get('/tpls/settings/business/people.html')
      controller : 'SettingsBusinessPeopleCtrl',
    }
    .state  prefix + 'settings.business.resources', {
      url        : '/resources',
      template   : ()->
        return TemplateService.get('/tpls/settings/business/resources.html')
      controller : 'SettingsBusinessResourcesCtrl',
    }
    .state  prefix + 'settings.business.services', {
      url        : '/services',
      template   : ()->
        return TemplateService.get('/tpls/settings/business/services.html')
      controller : 'SettingsBusinessServicesCtrl',
    }
    .state  prefix + 'settings.business.grid', {
      url        : '/grid',
      template   : ()->
        return TemplateService.get('/tpls/settings/business/grid.html')
      controller : 'SettingsBusinessGridCtrl',
    }
    # Business Settings STOP
    # Events Settings START
    .state  prefix + 'settings.events', {
      url              : '/events',
      template         : ()->
        return TemplateService.get('/tpls/settings/events/index.html')
      controller       : 'SettingsEventsPageCtrl',
      deepStateRedirect: {
        default: {
          state:  prefix + 'settings.events.courses'
        }
      }
    }
    .state  prefix + 'settings.events.courses', {
      url        : '/courses',
      template   : ()->
        return TemplateService.get('/tpls/settings/events/courses.html')
      controller : 'SettingsEventsCoursesCtrl',
    }
    .state  prefix + 'settings.events.single', {
      url        : '/single',
      template   : ()->
        return TemplateService.get('/tpls/settings/events/single.html')
      controller : 'SettingsEventsSingleCtrl',
    }
    .state  prefix + 'settings.events.recurring', {
      url        : '/recurring',
      template   : ()->
        return TemplateService.get('/tpls/settings/events/recurring.html')
      controller : 'SettingsEventsRecurringCtrl',
    }
    .state  prefix + 'settings.events.groups', {
      url        : '/groups',
      template   : ()->
        return TemplateService.get('/tpls/settings/events/groups.html')
      controller : 'SettingsEventsGroupsCtrl',
    }
    .state  prefix + 'settings.events.templates', {
      url        : '/templates',
      template   : ()->
        return TemplateService.get('/tpls/settings/events/templates.html')
      controller : 'SettingsEventsTemplatesCtrl',
    }
    # Events Settings STOP
    # Promotions Settings START
    .state  prefix + 'settings.promotions', {
      url              : '/promotions',
      template         : ()->
        return TemplateService.get('/tpls/settings/promotions/index.html')
      controller       : 'SettingsPromotionsPageCtrl',
      deepStateRedirect: {
        default: {
          state:  prefix + 'settings.promotions.deals'
        }
      }
    }
    .state  prefix + 'settings.promotions.deals', {
      url        : '/deals',
      template   : ()->
        return TemplateService.get('/tpls/settings/promotions/deals.html')
      controller : 'SettingsPromotionsDealsCtrl',
    }
    .state  prefix + 'settings.promotions.coupons', {
      url        : '/coupons',
      template   : ()->
        return TemplateService.get('/tpls/settings/promotions/coupons.html')
      controller : 'SettingsPromotionsCouponsCtrl',
    }
    .state  prefix + 'settings.promotions.bulk', {
      url        : '/bulk',
      template   : ()->
        return TemplateService.get('/tpls/settings/promotions/bulk.html')
      controller : 'SettingsPromotionsBulkCtrl',
    }
    .state  prefix + 'settings.promotions.packages', {
      url        : '/packages',
      template   : ()->
        return TemplateService.get('/tpls/settings/promotions/packages.html')
      controller : 'SettingsPromotionsPackagesCtrl',
    }
    # Promotions Settings STOP
    # Booking Settings START
    .state  prefix + 'settings.bookings', {
      url              : '/bookings',
      template         : ()->
        return TemplateService.get('/tpls/settings/bookings/index.html')
      controller       : 'SettingsBookingsPageCtrl',
      deepStateRedirect: {
        default: {
          state:  prefix + 'settings.bookings.questions'
        }
      }
    }
    .state  prefix + 'settings.bookings.questions', {
      url        : '/questions',
      template   : ()->
        return TemplateService.get('/tpls/settings/bookings/questions.html')
      controller : 'SettingsBookingsQuestionsCtrl',
    }
    .state  prefix + 'settings.bookings.texts', {
      url        : '/texts',
      template   : ()->
        return TemplateService.get('/tpls/settings/bookings/texts.html')
      controller : 'SettingsBookingsTextsCtrl',
    }
    .state  prefix + 'settings.bookings.addresses', {
      url        : '/addresses',
      template   : ()->
        return TemplateService.get('/tpls/settings/bookings/addresses.html')
      controller : 'SettingsBookingsAddressesCtrl',
    }
    .state  prefix + 'settings.bookings.images', {
      url        : '/images',
      template   : ()->
        return TemplateService.get('/tpls/settings/bookings/images.html')
      controller : 'SettingsBookingsImagesCtrl',
    }
    # Booking Settings STOP
]