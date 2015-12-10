class AptComplex < ActiveRecord::Base
  belongs_to :City
  belongs_to :Company
  has_many :Apartments

  validates :name, :street, presence: {message: 'must be present'}
  validates :City_id, presence: {message: 'must be selected'}

  def to_s
  	name
  end

end
