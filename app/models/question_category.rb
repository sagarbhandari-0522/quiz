# frozen_string_literal: true

class QuestionCategory < ApplicationRecord
  belongs_to :question
  belongs_to :category
end
