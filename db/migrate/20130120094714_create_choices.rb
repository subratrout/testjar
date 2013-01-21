class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :question_id
      t.string :title
      t.integer :score
      t.boolean :correct
      t.integer :position

      t.timestamps
    end
  end
end
