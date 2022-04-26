# frozen_string_literal: true

class CategoryPolicy < ApplicationPolicy
  attr_reader :user, :question

  def initialize(user, category)
    @user = user
    @category = category
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    @user.admin == true
  end

  def edit?
    new?
  end

  def update?
    edit?
  end

  def destroy
    edit?
  end
end
