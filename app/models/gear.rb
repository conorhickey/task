class Gear < ActiveRecord::Base
belongs_to :student
CATEGORIES = ["Boat","BA/PFD","Paddles","Dry Gear","Thermals","Safety","Other"]
Value = ["Yes","No"]
validates :category, inclusion: CATEGORIES
validates :owner,:brand,:model,:description,:size, presence: true
validates :price, allow_blank: true, numericality: { greater_than_or_equal_to: 0.01 }
validates :image, allow_blank: true, format: {
  with: %r{\.(gif|jpg|jpeg|png)\Z}i,
  message: 'must be a URL for GIF, JPG, JPEG or PNG image.'
}
end

