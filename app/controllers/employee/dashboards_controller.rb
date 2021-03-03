class Employee::DashboardsController < ApplicationController
  def show
    authorize :dashboard, :show?
    @available_cash = policy(Transaction.new).new? ? current_user.available_cash : 0
    # NotificationChannel.broadcast_to(User.find(24), { patate: "texte patate" })
  end
end
