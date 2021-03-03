class Hr::DashboardsController < Hr::BaseController

  def show
    authorize :dashboard, :show?
    
    @five_last_transactions = Transaction.where(user_id: User.where(company_id: current_user.company.id).pluck(:id)).last(5)
    
    @this_month_transactions = Transaction.joins(:user).where(users: { company: current_user.company }).where("extract(month from due_date) = ?", Date.today.month).where("extract(year from due_date) = ?", Date.today.year)
    
    @number_of_active_employees = @this_month_transactions.count

    @average_amount_this_month = @this_month_transactions.average(:amount)

    @total_acompts_this_month = @this_month_transactions.sum(:amount)

  end

end
