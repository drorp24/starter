class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def all

    oauth = request.env["omniauth.auth"]

    authentication = Authentication.includes(:user).find_by_provider_and_uid(oauth.provider, oauth.uid)

    if authentication
      flash[:notice] = "You are logged in!"
      sign_in_and_redirect(:user, authentication.user)
    else

      user = User.new
      authentication = user.apply_omniauth(oauth)
      if user.save
        flash[:notice] = "You are logged in!"
        sign_in_and_redirect(:user, user)
      else
        session["devise.user_attributes"] = user.attributes
        redirect_to new_user_registration_url
      end
    end

    authentication.update_auth_credentials(oauth)

  end

  alias_method :linkedin, :all

  def failure
    flash[:error] = "We are sorry, the authentication process failed please try again"
    redirect_to root_url
  end
end