class NotificationsController < ApplicationController

  def index
    @notifications = policy_scope(Notification).where(user: current_user)
    @disable_container = @current_user.position == "hr"
  end
end
