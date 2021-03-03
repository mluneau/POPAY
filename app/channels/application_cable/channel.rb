module ApplicationCable
  class Channel < ActionCable::Channel::Base
    def subscribed
      stream_for "notification:#{params[:id]}"
    end
  end
end
