class Apartment < ActiveRecord::Base
  belongs_to :Apt_complex
  has_many :Users
end
