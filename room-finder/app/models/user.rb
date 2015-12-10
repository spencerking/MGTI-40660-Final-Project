class User < ActiveRecord::Base
  belongs_to :Company
  belongs_to :City
  belongs_to :Apartment

  validates :apartment_id, :city_id, :company_id, presence: {message: 'must be selected'}
  validates :username, :password, presence: {message: 'must be present'}
  validates :username, uniqueness: true
end
