class MessagePolicy < ApplicationPolicy
  attr_reader :user, :post

  def update?
    true
  end

  def create?
    true
  end
end
