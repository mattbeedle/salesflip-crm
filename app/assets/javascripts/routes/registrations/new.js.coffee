App.RegistrationsNewRoute = Ember.Route.extend
  model: ->
    App.Registration.createRecord()

  setupController: (controller, model) ->
    controller.set('content', model)
