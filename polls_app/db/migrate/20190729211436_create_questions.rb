class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :poll_id, null: false
      t.text :text, null: false
    end
    add_index :questions, :poll_id
    add_index :questions, :text
  end
end
