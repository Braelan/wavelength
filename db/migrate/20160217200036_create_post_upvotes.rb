class CreatePostUpvotes < ActiveRecord::Migration
  def change
    create_table :post_upvotes do |t|
      t.integer :user_id, null: false
      t.integer :post_id, null: false

      t.timestamps null: false
    end
    add_index :post_upvotes, :post_id
  end
end
