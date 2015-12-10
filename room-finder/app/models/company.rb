class Company < ActiveRecord::Base
  belongs_to :City
  has_many :Users
  has_many :Apt_complexes

  validates :name, presence: {message: 'must be present'}
  validates :city_id, presence: {message: 'must be selected'}
end
