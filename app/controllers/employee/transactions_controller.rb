class Employee::TransactionsController < ApplicationController
  def index
    @transactions = policy_scope(Transaction).where(user: current_user).order(due_date: :desc)
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
    @transaction.bank_account = current_user.bank_accounts.first
    @transaction.due_date = Date.today
    @transaction.user = current_user
    authorize @transaction

    if @transaction.save
      @notification = Notification.new(
        sender: current_user,
        user: User.joins(:company)
                  .where(users: { company: current_user.company, position: "hr" })
                  .first,
        category: "nouvelle transaction",
        content: "Nouvelle demande d'acompte de #{current_user.full_name} d'un montant de #{@transaction.amount} € le #{localize(@transaction.due_date, format: "%d %B %Y")}"
      )
      @notification.save
      NotificationChannel.broadcast_to(
        @notification.user,
        render_to_string(partial: "shared/notification", locals: { notification: @notification })
        # {
        #   content: @notification.content,
        #   sender: { id: @notification.sender.id, name: @notification.sender.full_name }
        # }
      )
      redirect_to employee_transaction_path(@transaction)
      if current_user.telephone
        Sms::Sender.new(tel: current_user.telephone, first_name: current_user.first_name, amount: @transaction.amount).call
      end
    else
      redirect_to root_path
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
