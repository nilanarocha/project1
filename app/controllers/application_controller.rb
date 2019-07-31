# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorize

  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: 'You are not authorized to access this page'
    end
  end
end
