class TransactionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.position == "employee"
        scope.where(user: user)
      else
        scope.joins(:user).where(users: { company_id: user.company_id })
      end
    end
  end

  def new?
    user.transactions.empty? || user.transactions.last.due_date.month != Date.today.month
  end

  def show?
    record.user == user
  end

  def confirmation?
    record.user == user
  end

  def create?
    new? && show?
  end
end
