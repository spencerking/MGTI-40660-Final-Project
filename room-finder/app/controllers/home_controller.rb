class HomeController < ProtectedController

	before_action :check_admin, except: [:index]

  	def index
  	end
end
