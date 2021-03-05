class NotificationsController < ApplicationController

  def index
    @disable_header_mobile = true
    @notifications = policy_scope(Notification).where(user: current_user)
    @disable_container = @current_user.position == "hr"
  end
end
