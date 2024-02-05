class AuthController < ApplicationController
  def new_session
    render layout: false
  end

  def create_session
    if params[:password] == ENV['ADMIN_PASSWORD']
      session[:logged_in] = true
    end
    redirect_to :consoles
  end

  def logout
    session[:logged_in] = false
    redirect_to :auth_new_session
  end
end
