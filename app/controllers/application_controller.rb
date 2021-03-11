class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	
	before_action :authenticate_user!

	private

	#Require first and last name during sign up
	#in addition to other required params
	def configure_permitted_parameters()
		devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
	end
end
