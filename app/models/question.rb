class MyValidator < ActiveModel::Validator
  def validate(record)
    count = 0
    record.options.each { count += 1 }
    record.errors.add :options, 'You must have at least three options' if count < 3
  end
end
# frozen_string_literal: true

class Question < ApplicationRecord
  include ActiveModel::Validations
  has_many :question_categories
  has_many :categories, through: :question_categories
  has_many :options, dependent: :destroy
  accepts_nested_attributes_for :options, reject_if: :all_blank, allow_destroy: true
  # validates :category_ids, presence: true
  # validates_with MyValidator
end
