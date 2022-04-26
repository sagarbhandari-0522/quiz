# frozen_string_literal: true

class AddQuestionRefToOptions < ActiveRecord::Migration[7.0]
  def change
    add_reference :options, :question, null: false, foreign_key: true
  end
end
