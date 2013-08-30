App.Registration = DS.Model.extend
  firstName:            DS.attr('string')
  lastName:             DS.attr('string')
  email:                DS.attr('string')
  password:             DS.attr('string')
  passwordConfirmation: DS.attr('string')
  validations:
    firstName:
      presence: true
    lastName:
      presence: true
    email:
      presence: true
    password:
      presence: true
      confirmation: true
    passwordConfirmation:
      presence: true