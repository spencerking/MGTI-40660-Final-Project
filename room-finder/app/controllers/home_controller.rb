class HomeController < ProtectedController

	before_action :check_admin, except: [:index, :find_company, :find_city, :find_complex]

  	def index()
  		@which_render = 0
  		@user = User.find_by_id(session[:user_id])

		company_id = @user.Company_id
		@company = Company.find(company_id)

		city_id = @user.City_id
		@city = City.find(city_id)

		complex_id = @user.Apt_complex_id
		@complex = AptComplex.find(complex_id)
  	end

  	def find_company
  		@which_render = 1
  	end

  	def find_city
  		@which_render = 2
  	end

  	def find_complex
  		@which_render = 3
  	end
end
