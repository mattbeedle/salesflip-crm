class LeadRepository
  include Datamappify::Repository

  for_entity Lead

  default_provider :ActiveRecord
end
