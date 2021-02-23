class CompaniesController < ApplicationController
  def new
    @company = Company.new
    authorize @company
  end

  def create
    @company = Company.new(company_params)
    authorize @company
    if @company.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def company_params
    params.require(:company).permit([:name, :number_of_employees, :subscription_id])
  end
end
