class Hr::TransactionsController < ApplicationController
  def index
    @transactions = policy_scope(Transaction)
  end
end
