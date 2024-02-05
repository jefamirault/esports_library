class ApplicationController < ActionController::Base

  def authenticate
    redirect_to auth_new_session_path unless session[:logged_in] == true
  end

  def logout
    session[:logged_in] = false
  end
end
