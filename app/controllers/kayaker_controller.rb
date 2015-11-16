class KayakerController < ApplicationController
  def index
	@gears = Gear.order(:owner)
  end
end
