App.RegistrationsNewController = Ember.ObjectController.extend
  submit: ->
    self = this
    @content.save().then ->
      self.transitionTo('index')
