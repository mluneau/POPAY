class Hr::DashboardsController < Hr::BaseController

  def show
    authorize :dashboard, :show?
    @five_last_transactions = Transaction.where(user_id: User.where(company_id: current_user.company.id).pluck(:id)).last(5)

  end

  private

  def company_params
    params.require(:company).permit([:number_of_employees, :name])
  end

end
