class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def authenticate
  	authenticate_user_helper
  end
end