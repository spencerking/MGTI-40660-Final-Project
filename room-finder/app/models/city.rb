class City < ActiveRecord::Base
	has_many :Users
	has_many :Companies
	has_many :Apt_complexes

	validates :name, :state, presence: {message: 'must be present'}

	def to_s
  		name
  	end
end
