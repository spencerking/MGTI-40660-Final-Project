class Apartment < ActiveRecord::Base
  belongs_to :Apt_complex
  has_many :Users

  validates :Apt_complex_id, presence: {message: 'must be selected'}
  validates :floor, :room, presence: {message: 'must be present'}

  def apt_name
  	"#{self.Apt_complex_id} #{floor} #{room}"
  end

end
