class DiscussionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    record.employee_id == user.id || record.hr_id == user.id
  end

  def show?
    record.employee_id == user.id || record.hr_id == user.id
  end

  def new?
    true
  end


  def create?
    record.user == user
  end

end
