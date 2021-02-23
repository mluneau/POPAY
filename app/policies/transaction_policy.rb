class TransactionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.position == "employee"
        scope.where(user: user)
      else
        scope.all
      end
    end
  end

  def create?
    record.user == user
  end

end
