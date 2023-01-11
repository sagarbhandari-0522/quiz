# frozen_string_literal: true

class Category < ApplicationRecord
  include ActiveModel::Dirty
  has_many :question_categories, dependent: :destroy
  has_many :questions, through: :question_categories
  validates :name, presence: true
  enum status: { published: 0, unpublished: 1, not_set: 2 }
  before_update :check_status, if: :status_changed?

  def check_status
    binding.pry
    # raise(Error::ErrorHandler, 'Category is on not_set status so unable to Update') if status_was == 'unpublished'
  end

  def reload!
    clear_changes_information
  end

  def rollback!
    restore_attributes
  end
end
