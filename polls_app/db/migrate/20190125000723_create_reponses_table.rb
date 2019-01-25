class CreateReponsesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :reponses do |t|
      t.integer :question_id, null: false
      t.integer :answer_choice_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
    add_index :reponses, :user_id
  end
end
