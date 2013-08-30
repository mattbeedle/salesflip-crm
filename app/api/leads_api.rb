class LeadsApi < Grape::API
  helpers do
    def leads
      @leads ||= LeadRepository.all
    end
  end

  resource :leads do
    desc 'Return all leads'
    get do
      { leads: leads }
    end
  end
end
