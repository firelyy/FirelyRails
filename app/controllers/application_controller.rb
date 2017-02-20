class ApplicationController < ActionController::API
	before_action :authenticate_request
  helper_method :authenticate_user_helper

	attr_reader :current_user

	def authenticate_user_helper
		command = AuthenticateUser.call(params[:cell], params[:password])

		if command.success?
			render json: { auth_token: command.result }
		else
			render json: { error: command.errors }, status: :unauthorized
		end
	end

	private

	def authenticate_request
		@current_user = AuthorizeApiRequest.call(request.headers).result
		render json: { error: 'Not Authorized' }, status: 401 unless @current_user
	end


end