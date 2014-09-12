class PostPolicy < ApplicationPolicy
  attr_reader :user, :post

  class Scope < Scope
    def resolve
      if current_user && current_user.has_role? :admin
        scope.all
      else
        []
      end
    end
  end

  def update?
    current_user && current_user.has_role? :admin
  end

  def create?
    current_user && current_user.has_role? :admin
  end
end
