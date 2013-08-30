class LeadsApi < Grape::API
  helpers do
    def leads
      @leads ||= LeadRepository.all
    end

    def lead
      if params[:id]
        @lead ||= LeadRepository.find(params[:id])
      else
        @lead ||= Lead.new(params[:lead]).tap do |lead|
          lead.user = current_user
        end
      end
    end
  end

  resource :leads do
    desc 'Return all leads'
    get do
      { leads: leads }
    end

    desc 'Return the lead with the supplied id'
    params do
      requires :id
    end
    route_param :id do
      get do
        { lead: lead }
      end
    end

    desc 'Create a lead'
    post do
      LeadRepository.save!(lead)
      { lead: lead }
    end
  end
end
