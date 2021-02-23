class Employee::TransactionsController < ApplicationController
  def index
    @transactions = policy_scope(Transaction).where(user: current_user)
  end

  def create
  end

  def new
  end
end
