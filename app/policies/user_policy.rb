class UserPolicy < ApplicationPolicy
  attr_reader :user, :record

  def update?
    res = current_user.id == user.id
    res
  end

  def create?
    true
  end
end
