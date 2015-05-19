class SessionsController < ApplicationController
  def create
  end

  def oauth_success
  end

  def oauth_failure
    provider = params[:strategy]

    if provider === 'identity'
      flash[:error] = t('user.signin_failure')
    else
      flash[:error] = t('user.oauth.auth_failure')
    end

    redirect_to users_signin_path
  end

  def destroy
    session[:user_id] = nil
    cookies.delete :email_hash
    cookies.delete :user_id
    redirect_to root_url
  end
end
