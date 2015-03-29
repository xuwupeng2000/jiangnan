class PostPolicy < ApplicationPolicy
  attr_reader :user, :post

  class Scope < Scope
    def resolve
      #if user && user.has_role?(:admin)
        #scope.all
      #else
        #[]
      #end

      # There is no attribute like :published
      # and therefore this scope doesn't been used yet.
      scope.all
    end
  end

  def update?
    user.has_role?(:admin)
  end

  def create?
    user.has_role?(:admin)
  end
end
