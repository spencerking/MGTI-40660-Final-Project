class AptComplex < ActiveRecord::Base
  belongs_to :City
  belongs_to :Company
  has_many :Apartments
end
