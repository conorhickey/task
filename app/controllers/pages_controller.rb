class PagesController < ApplicationController
skip_before_action :authorize
    def show
    render template: "pages/#{params[:page]}"
    end
end
