App.LeadShowRoute = Ember.Route.extend App.Auth.AuthRedirectable,
  model: ->
    @modelFor('lead')

  renderTemplate: ->
    @render 'leads/show'