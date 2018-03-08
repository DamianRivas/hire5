class AddIncorrectAnswersToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :incorrect_answer1, :text
    add_column :questions, :incorrect_answer2, :text
    add_column :questions, :incorrect_answer3, :text
  end
end
