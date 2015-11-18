class Gear < ActiveRecord::Base
has_many :line_items
before_destroy :ensure_not_referenced_by_any_line_item
validates :owner, :category, :brand,:model,:description,:size, presence: true
validates :price, allow_blank: true, numericality: { greater_than_or_equal_to: 0.01 }
validates :image, allow_blank: true, format: {
  with: %r{\.(gif|jpg|jpeg|png)\Z}i,
  message: 'must be a URL for GIF, JPG, JPEG or PNG image.'
}
private

# ensure that there are no line items referencing this product
def ensure_not_referenced_by_any_line_item
  if line_items.empty?
    return true
  else
    errors.add(:base, 'Line Items present')
    return false
  end
end
end
