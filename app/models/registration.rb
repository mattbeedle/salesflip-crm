class Registration
  include Datamappify::Entity

  attribute :first_name,            String
  attribute :last_name,             String
  attribute :email,                 String
  attribute :password,              String
  attribute :password_confirmation, String

  validates :first_name, :last_name, :email, :password, :password_confirmation,
    presence: true
end
