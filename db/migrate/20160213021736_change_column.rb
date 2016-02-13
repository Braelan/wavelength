class ChangeColumn < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.change :lat, :decimal
      t.change :lng, :decimal
    end
  end
end
