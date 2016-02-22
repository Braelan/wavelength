class AddColumnTitleToPdf < ActiveRecord::Migration
  def change
    add_column :pdfs, :title, :string, default: "pdf", null: false
  end
end
