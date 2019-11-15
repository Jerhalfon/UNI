class FavoritePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    !user.admin
  end

  def destroy?
    true
  end
end
