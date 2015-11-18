class Student < ActiveRecord::Base
has_many :gears, dependent: :destroy
end
