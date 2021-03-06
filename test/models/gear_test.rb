require 'test_helper'

class GearTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
test "Gear attributes must not be empty" do
  gear = Gear.new
  assert gear.invalid?
  assert gear.errors[:owner].any?
  assert gear.errors[:description].any?
  assert gear.errors[:brand].any?
end
test "gear price must be positive" do
  gear = gears(:one)

  gear.price = -1
  assert gear.invalid?
  assert gear.errors[:price].any?

  gear.price = 0
  assert gear.invalid?
  assert gear.errors[:price].any?

  gear.price = 1
  assert gear.valid?
  assert gear.errors[:price].none?
end
test "image must point to an image file" do
  gear = gears(:one)
  ok = %w{ frog.gif frog.jpg frog.png FROG.PNG fRoG.PnG
           http://a.b.c/x/y/z/frog.png frog.jpeg }
  bad = %w{ frog.doc frog.png/less frog.png.less }

  ok.each do |url|
    gear.image = url
    assert gear.valid?, "#{url} should be a valid image url"
  end

  bad.each do |url|
    gear.image = url
    assert gear.invalid?, "#{url} shouldn't be a valid image url"
  end
end
end
