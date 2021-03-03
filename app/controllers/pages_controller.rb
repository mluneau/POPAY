class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @disable_triangle_background = true
    @enable_squared_background_small = false
    @disable_navbar = true
    @disable_header_mobile = true
    @disable_container = true
  end

  def profile
    @disable_triangle_background = true
    @enable_squared_background_small = true
  end
end
