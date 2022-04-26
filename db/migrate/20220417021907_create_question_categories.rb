# frozen_string_literal: true

class CreateQuestionCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :question_categories do |t|
      t.belongs_to :question
      t.belongs_to :category
      t.timestamps
    end
  end
end
