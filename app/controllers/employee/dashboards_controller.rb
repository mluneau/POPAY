class Employee::DashboardsController < ApplicationController
  def show
    authorize :dashboard, :show?
    @available_cash = current_user.available_cash
  end
end
