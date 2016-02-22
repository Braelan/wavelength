class CreatePdfs < ActiveRecord::Migration
  def change
    create_table :pdfs do |t|
      t.integer :post_id
      t.string :link, null: false

      t.timestamps null: false
    end
    add_index :pdfs, :post_id
  end
end
