class User < ActiveRecord::Base
  belongs_to :Company
  belongs_to :City
  belongs_to :Apt_complex

  validates :Apt_complex_id, :City_id, :Company_id, presence: {message: 'must be selected'}
  validates :username, :password, presence: {message: 'must be present'}
  validates :username, uniqueness: true
end
