class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :user_id
      t.timestamp :start_time
      t.timestamp :end_time

      t.timestamps null: false
    end
    add_index :events, :user_id
  end
end
