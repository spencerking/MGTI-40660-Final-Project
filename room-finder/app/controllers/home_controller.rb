class HomeController < ProtectedController

	before_action :check_admin, except: [:index]

  	def index
  		@user = User.find_by_id(session[:user_id])
  	end
end
