class Hr::TransactionsController < Hr::BaseController
  def index
    @transactions = policy_scope(Transaction).order(due_date: :desc)
  end
end
