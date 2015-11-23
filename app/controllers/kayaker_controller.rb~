class KayakerController < ApplicationController
skip_before_action :authorize
  def index
	@gears = Gear.order(:owner)

  end
end
