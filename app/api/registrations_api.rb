class RegistrationsApi < Grape::API
  helpers do
    def registration
      @registration ||= Registration.new(params[:registration])
    end
  end

  resource :registrations do
    desc 'Create a new registration'
    params do
      group :registration do
        requires :first_name
        requires :last_name
        requires :email
        requires :password
        requires :password_confirmation
      end
    end
    post do
      RegistrationRepository.save!(registration)
      { registration: registration }
    end
  end
end
