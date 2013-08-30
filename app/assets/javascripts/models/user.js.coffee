App.User = DS.Model.extend Ember.Validations.Mixin,
  leadsAsCreator:  DS.hasMany('App.Lead', { inverse: 'assigned_to' })
  leadsAsAssignee: DS.hasMany('App.Lead', { inverse: 'user' })
  email:           DS.attr('string')
  firstName:       DS.attr('string')
  lastName:        DS.attr('string')
  password:        DS.attr('string')
  validations:
    firstName:
      presence: true
    lastName:
      presence: true
    email:
      presence: true
