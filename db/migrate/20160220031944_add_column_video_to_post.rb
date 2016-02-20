class AddColumnVideoToPost < ActiveRecord::Migration
  def change
    add_column :posts, :video, :string
  end
end
