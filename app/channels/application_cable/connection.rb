module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user
    def connect
      # used by action cable
      self.current_user = find_current_user
    end

    private

    def find_current_user
      if current_user = env["warden"].user
        current_user
      else
        reject_unauthorized_connection
      end
    end
  end
end
