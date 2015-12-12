class ProtectedController < ApplicationController

	before_action :require_login
	before_action :check_admin

	# this will check for session and redirect to login if not present
	def require_login
		unless session[:user_id]
	  		flash[:message] = "You must be logged in to view that page"
	  		redirect_to login_path
		end
	end

	def check_admin
		if session[:user_id] != nil
			user = User.find_by_id(session[:user_id])
			if user.isAdmin != true
				flash[:message] = "You must be an administrator to access that page"
				redirect_to home_path
			end
		end
	end

end
