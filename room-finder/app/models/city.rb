class City < ActiveRecord::Base
	has_many :Users
	has_many :Companies
	has_many :Apt_complexes
end
