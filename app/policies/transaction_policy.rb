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

  def create?
    record.user == user
  end

  def show?
    create?
  end

end
