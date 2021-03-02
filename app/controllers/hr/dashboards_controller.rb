class Hr::DashboardsController < Hr::BaseController

  def show
    authorize :dashboard, :show?
  end
end
