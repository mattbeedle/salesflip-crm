App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map (match)->
  @resource 'leads'
