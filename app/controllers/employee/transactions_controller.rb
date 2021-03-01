class Employee::TransactionsController < ApplicationController
  def index
    @transactions = policy_scope(Transaction).order(due_date: :desc)
  end

  def new
    @transaction = Transaction.new
    @available_cash = current_user.available_cash
    authorize @transaction
  end

  def create
    @transaction = Transaction.new(transaction_params)
    # @transaction.bank_account = BankAccount.find(params[:transaction][:bank_account])
    @transaction.due_date = Date.today
    @transaction.user = current_user
    authorize @transaction

    if @transaction.save
      redirect_to employee_transactions_path
    else
      render :new
    end
  end

  def confirmation
    @transaction = Transaction.find(params[:id])
    @transaction.user = current_user
    authorize @transaction
    render pdf: "confirmation_#{@transaction.due_date}"   # Excluding ".pdf" extension.
  end

  private

  def transaction_params
    params.require(:transaction).permit([:due_date, :amount, :comment])
  end
end
