class LineItem < ActiveRecord::Base
  belongs_to :gear
  belongs_to :cart
end