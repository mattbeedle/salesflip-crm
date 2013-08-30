App.Lead = DS.Model.extend
  user:           DS.belongsTo('App.User', { inverse: 'leadsAsCreator' })
  campaignId:     DS.belongsTo('App.Campaign')
  assignedTo:     DS.belongsTo('App.User', { inverse: 'leadsAsAssignee' })
  firstName:      DS.attr('string')
  lastName:       DS.attr('string')
  salutation:     DS.attr('string')
  company:        DS.attr('string')
  source:         DS.attr('string')
  state:          DS.attr('state')
  referredBy:     DS.attr('string')
  email:          DS.attr('string')
  blog:           DS.attr('string')
  linkedin:       DS.attr('string')
  facebook:       DS.attr('string')
  twitter:        DS.attr('string')
  skype:          DS.attr('string')
  rating:         DS.attr('number')
  doNotCall:      DS.attr('boolean')
  backgroundInfo: DS.attr('string')
  createdAt:      DS.attr('string')
  updatedAt:      DS.attr('string')