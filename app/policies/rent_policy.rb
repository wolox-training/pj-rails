class RentPolicy < ApplicationPolicy
  class Scope < Scope
    attr_reader :user, :rent
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.where(user_id: @user.id)
    end
  end

  def update?
    rent.user_id == user.id
  end

  def show?
    rent.user_id == user.id
  end
end
