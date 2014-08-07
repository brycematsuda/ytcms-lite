class AccessController < ApplicationController

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def index
    # panel page
  end

  def login
    # login form
  end

  def attempt_login
    if params[:email].present? && params[:password].present?
      found_admin = Admin.where(:email => params[:email]).first
      if found_admin
        authorized_admin = found_admin.authenticate(params[:password])
      end
    end

    if authorized_admin
      flash[:notice] = "You are now logged in."
      session[:admin_id] = authorized_admin.id
      session[:admin] = authorized_admin.email
      redirect_to action: :index
    else
      flash[:notice] = "Invalid email/password combination."
      redirect_to action: :login
    end
  end

    def logout
      flash[:notice] = "You have logged out."
      session[:admin_id] = nil
      session[:admin] = nil
      redirect_to action: :login
    end
end