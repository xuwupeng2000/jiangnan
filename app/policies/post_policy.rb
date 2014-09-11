class PostPolicy < ApplicationPolicy
  attr_reader :user, :post

  def update?
    res = user.has_role? :admin
    res
  end

  def create?
    res = user.has_role? :admin
    res
  end

  def index?
    res = true
    res
  end
end
