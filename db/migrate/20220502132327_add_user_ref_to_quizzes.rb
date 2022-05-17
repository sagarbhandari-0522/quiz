class AddUserRefToQuizzes < ActiveRecord::Migration[7.0]
  def change
    add_reference :quizzes, :user, null: false, foreign_key: true
  end
end
