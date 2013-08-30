class RegistrationRepository
  include Datamappify::Repository

  for_entity Registration

  default_provider :ActiveRecord

  group provider: :ActiveRecord do
    map_attribute :first_name, to: 'User#first_name'
    map_attribute :last_name, to: 'User#last_name'
    map_attribute :email, to: 'UserAccount#email'
    map_attribute :password, to: 'UserAccount#password'
    map_attribute :password_confirmation,
      to: 'UserAccount#password_confirmation'
  end
end
