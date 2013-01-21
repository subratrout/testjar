class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :test_id
      t.string :title
      t.integer :position

      t.timestamps
    end
  end
end
