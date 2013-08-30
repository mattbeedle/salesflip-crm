class UserRepository
  include Datamappify::Repository

  for_entity User

  default_provider :ActiveRecord

  group provider: :ActiveRecord do
    map_attribute :account_email, 'UserAccount#email'
  end
end
