class Admin::UniversityPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user.admin
  end

  def create
    new?
  end
end
