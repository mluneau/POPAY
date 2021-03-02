class Hr::DashboardsController < ApplicationController

  def show
    authorize :dashboard, :show?
    @five_last_transactions = Transaction.where(user_id: User.where(company_id: current_user.company.id).pluck(:id)).last(5)
  end

end
