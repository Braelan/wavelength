class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :post_id, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end

    add_index :memberships, :post_id
    add_index :memberships, :user_id
  end
end
