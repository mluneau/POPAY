class Hr::BaseController < ApplicationController
  before_action :verify_position

  private
  def verify_position
    return if current_user&.position == "hr"

    redirect_to root_path if current_user&.position != "hr"
    flash.alert = "Vous n'êtes pas autorisé à utiliser ces fonctionnalités"
  end
end
