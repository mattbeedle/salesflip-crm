App.User = DS.Model.extend
  leadsAsCreator:  DS.hasMany('App.Lead', { inverse: 'assigned_to' })
  leadsAsAssignee: DS.hasMany('App.Lead', { inverse: 'user' })
  email:           DS.attr('string')
  first_name:      DS.attr('string')
  last_name:       DS.attr('string')
  password:        DS.attr('string')
