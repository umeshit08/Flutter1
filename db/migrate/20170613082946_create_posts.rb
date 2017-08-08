class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.references :user, index: true, foregin_key: true

      t.timestamps  :false
    end
    add_index :posts,[:user_id, :created_at]
  end
end
