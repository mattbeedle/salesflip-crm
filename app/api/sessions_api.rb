class SessionsApi < Grape::API
  helpers do
    def missing_params
      warden.custom_failure!
      error!('400 Missing Parameters', 400)
    end

    def remember_token(user_account)
      data = UserAccount.serialize_into_cookie(user_account)
      "#{data.first.first} - #{data.last}"
    end

    def resource_from_remember_token
      token = params[:remember_token]
      id, identifier = token.split('-')
      UserAccount.serialize_from_cookie(id, identifier)
    end

    def find_for_database_authentication(email)
      UserAccount.find_for_database_authentication(email: email)
    end

    def resource_from_credentials
      if user_account = find_for_database_authentication(params[:email])
        user_account if user_account.valid_password?(params[:password])
      end
    end

    def user_account
      @user_account ||= if params[:remember_token]
        resource_from_remember_token
      else
        resource_from_credentials
      end
    end
  end

  resource :sessions do
    desc 'Create a new session'
    params do
      optional :email
      optional :password
      optional :remember
    end
    post do
      unless (params[:email] && params[:password]) || (params[:remember_token])
        missing_params
      end

      unauthorized! unless user_account
      warden.set_user(user_account, scope: :user_account)

      user_account.ensure_authentication_token!
      data = {
        user_id:    user_account.user_id,
        auth_token: user_account.authentication_token
      }

      if params[:remember]
        user_account.remember_me!
        data[:remember_token] = remember_token(user_account)
      end

      data
    end

    desc 'Delete the current session'
    delete :current do
      user_account = UserAccount.find_by_authentication_token(params[:auth_token])
      unauthorized! unless user_account

      warden.logout

      user_account.reset_authentication_token!
      { user_id: user_account.id }
    end
  end
end
