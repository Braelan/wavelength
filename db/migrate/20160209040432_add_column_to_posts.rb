class AddColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :lat, :integer
    add_column :posts, :lng, :integer
  end
end
