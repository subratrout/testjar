class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :hand_back_id
      t.integer :choice_id
      t.integer :question_id

      t.timestamps
    end
  end
end
