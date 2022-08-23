class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @bikes = Bike.last(6)
  end

  def dashboard
  end
end
