class CreateTagsUsers < ActiveRecord::Migration
  def change
    create_table :tags_users, :id => false do |t|
    	t.references :user
    	t.references :tag
    end
    add_index :tags_users, [:user_id, :tag_id]
  end
end
