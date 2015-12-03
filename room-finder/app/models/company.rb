class Company < ActiveRecord::Base
  belongs_to :City
  has_many :Users
  has_many :Apt_complexes
end
