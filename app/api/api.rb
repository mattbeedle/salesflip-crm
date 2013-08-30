class Api < Grape::API
  prefix 'api'

  version 'v1', using: :path

  format :json

  rescue_from Datamappify::Data::EntityInvalid do |error|
    error_response(status: 422, message: { errors: error.entity.errors.as_json })
  end

  helpers do
    def current_user_account
      warden.user(scope: :user_account)
    end

    def current_user
      UserRepository.find(current_user_account.user_id)
    end

    def user_signed_in?
      warden.authenticated?(scope: :user)
    end

    def authenticate_user!
      unauthorized! unless user_signed_in?
    end

    def unauthorized!
      error!('401 Unauthorized', 401)
    end

    def warden
      env['warden']
    end
  end

  mount LeadsApi
  mount RegistrationsApi
  mount SessionsApi
end