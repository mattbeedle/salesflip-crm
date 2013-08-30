App.Auth = Ember.Auth.create
  signInEndPoint: '/api/v1/sessions'
  signOutEndPoint: '/api/v1/sessions/current'

  tokenKey: 'auth_token'
  tokenIdKey: 'user_id'

  modules: ['emberData', 'authRedirectable', 'actionRedirectable', 'rememberable', 'timeoutable']

  authRedirectable:
    route: 'sessions.new'

  actionRedirectable:
    signInRoute: 'index'
    signInSmart: true
    signInBlacklist: ['sessions.new']
    signOutRoute: 'sessions.new'

  timeoutable:
    period: 60

  rememberable:
    tokenkey: 'remember_token'
    period: 7
    autoRecall: true

  userModel: 'App.User'
