class Employee::TransactionsController < ApplicationController
  def index
    @transactions = policy_scope(Transaction)
  end

  def new
    @transaction = Transaction.new
    @available_cash = current_user.available_cash
    authorize @transaction
  end

  def show
    @disable_triangle_background = true
    @enable_squared_background = true
    @transaction = Transaction.find(params[:id])
    authorize @transaction
  end

  def create
    @transaction = Transaction.new(transaction_params)
    # @transaction.bank_account = BankAccount.find(params[:transaction][:bank_account])
    @transaction.due_date = Date.today
    @transaction.user = current_user
    authorize @transaction

    if @transaction.save
      redirect_to employee_transaction_path(@transaction)
    else
      redirect_to root_path
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit([:due_date, :amount, :comment])
  end
end
