class Lead
  include Datamappify::Entity

  attribute :title,         String
  attribute :salutation,    String
  attribute :first_name,    String
  attribute :last_name,     String
  attribute :company,       String
  attribute :source,        String
  attribute :state,         String
  attribute :referred_by,   String
  attribute :email,         String
  attribute :blog,          String
  attribute :linkedin,      String
  attribute :facebook,      String
  attribute :twitter,       String
  attribute :skype,         String
  attribute :rating,        Integer
  attribute :do_not_call,   Boolean, default: false
  attribute :deleted_at,    DateTime
  attribute :background_info, String

  references :user
  references :assigned_to
  references :campaign

  validates :last_name, presence: true
end