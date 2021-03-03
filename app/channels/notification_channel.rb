class NotificationChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "notification:#{current_user.to_gid_param}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
