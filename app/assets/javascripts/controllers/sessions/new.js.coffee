App.SessionsNewController = Ember.Controller.extend
  email: null
  password: null
  remember: false

  submit: ->
    App.Auth.signIn
      data:
        email: @get('email')
        password: @get('password')
        remember: @get('remember')
