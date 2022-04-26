# frozen_string_literal: true

class QuestionPolicy < ApplicationPolicy
  attr_reader :user, :question

  def initialize(user, question)
    @user = user
    @question = question
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    @user.admin?
  end

  def edit?
    new?
  end

  def create?
    new?
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
