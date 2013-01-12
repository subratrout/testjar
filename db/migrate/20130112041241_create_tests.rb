class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :user_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
