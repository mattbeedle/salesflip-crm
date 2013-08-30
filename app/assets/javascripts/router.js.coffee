App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map (match)->
  @resource 'leads'
  @resource 'registrations', ->
    @route 'new'
  @resource 'sessions', ->
    @route 'new'
