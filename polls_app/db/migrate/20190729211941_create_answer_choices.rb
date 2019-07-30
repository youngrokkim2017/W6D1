class CreateAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.integer :question_id, null: false
      t.text :body, null: false
    end
    add_index :answer_choices, :question_id
    add_index :answer_choices, :body
  end
end
