App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map (match)->
  @resource 'leads', ->
    @route 'new'
    @resource 'lead', path: '/:lead_id', ->
      @route 'show'
  @resource 'registrations', ->
    @route 'new'
  @resource 'sessions', ->
    @route 'new'
