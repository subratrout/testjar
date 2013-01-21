class CreateHandBacks < ActiveRecord::Migration
  def change
    create_table :hand_backs do |t|
      t.integer :test_id
      t.string :email
      t.datetime :started_at

      t.timestamps
    end
  end
end
