class Apartment < ActiveRecord::Base
  belongs_to :Apt_complex
  has_many :Users

  validates :apt_complex_id, presence: {message: 'must be selected'}
  validates :floor, :room, presence: {message: 'must be present'}
end
