# frozen_string_literal: true

class QuestionCategory < ApplicationRecord
  belongs_to :question
  belongs_to :category
  # validates :category_ids, presence: true
end
