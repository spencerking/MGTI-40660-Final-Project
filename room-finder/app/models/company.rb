class Company < ActiveRecord::Base
  belongs_to :City
  has_many :Users
  has_many :Apt_complexes

  validates :name, presence: {message: 'must be present'}
  validates :City_id, presence: {message: 'must be selected'}

  def to_s
  		name
  end

end
