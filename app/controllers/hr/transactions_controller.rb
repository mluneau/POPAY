class Hr::TransactionsController < ApplicationController
  def index
    @transactions = policy_scope(Transaction).order(due_date: :desc)
  end
end
