class AddColumnInfoToPost < ActiveRecord::Migration
  def change
    add_column :posts, :info, :text
  end
end
