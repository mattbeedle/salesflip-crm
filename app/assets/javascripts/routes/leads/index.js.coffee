App.LeadsIndexRoute = Ember.Route.extend App.Auth.AuthRedirectable,
  model: ->
    App.Lead.find()

  actions:
    newLead: ->
      lead = App.Lead.createRecord({ user: App.Auth.get('user') })
      controller = @controllerFor('leads.new')
      controller.modal(lead)
      @send('openModal', 'leads.new')
