class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
    if session[:user_id].nil?
      flash[:notice] = t :must_login

      respond_to do |format|
        format.html {
          session[:return_to] = request.fullpath
          redirect_to users_signin_path
        }

        format.json { render json: {:status => -2} }
      end
    end
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end

end
