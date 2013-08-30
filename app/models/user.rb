class User
  include Datamappify::Entity
  include Datamappify::Lazy

  attr_accessor :user_account

  attribute :account_username,  String
  attribute :account_email,     String
  attribute :first_name,        String
  attribute :last_name,         String

  validates :first_name, :last_name, presence: true
end
