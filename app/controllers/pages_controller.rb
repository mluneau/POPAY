class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @disable_triangle_background = true
    @enable_squared_background_small = true
  end
end
