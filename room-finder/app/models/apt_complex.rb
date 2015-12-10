class AptComplex < ActiveRecord::Base
  belongs_to :City
  belongs_to :Company
  has_many :Apartments

  validates :street, presence: {message: 'must be present'}
  validates :city_id, :company_id, presence: {message: 'must be selected'}
end
