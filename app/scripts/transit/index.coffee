#= require_self
#
#= require_tree ../templates
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./views
#= require ./utils
#= require_tree .

define [
    'transit/index',
    'transit/models/arrival',
    'transit/models/google_map',
    'transit/models/map',
    'transit/models/plan',
    'transit/models/real_time',
    'transit/models/route',
    'transit/models/stop',
    'transit/models/trip',
    'transit/collections/arrivals',
    'transit/collections/itineraries',
    'transit/collections/stops',
    'transit/collections/trips',
    'transit/views/application',
    'transit/views/itinerary',
    'transit/views/map',
    'transit/views/modals',
    'transit/views/navbar',
    'transit/views/nearby',
    'transit/views/plan',
    'transit/views/popout',
    'transit/views/route',
    'transit/views/segment',
    'transit/views/splash',
    'transit/views/stop'
], () ->
    window.Transit =
      Models: {}
      Collections: {}
      Views: {}
      init: ->
        Transit.map = {}
        Transit.plan = new Transit.Models.Plan(date: new Date())
        Transit.events = _.clone(Backbone.Events)
        Transit.router = new Transit.Router
        Backbone.history.start(pushState: true)
