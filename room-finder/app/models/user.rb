class User < ActiveRecord::Base
  belongs_to :Company
  belongs_to :City
  belongs_to :Apartment
end
