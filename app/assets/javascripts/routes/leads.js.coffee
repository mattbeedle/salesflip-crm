App.LeadsRoute = Ember.Route.extend App.Auth.AuthRedirectable,
  model: ->
    App.Lead.find()
