class AddColumnToPants < ActiveRecord::Migration
  def change
    add_column :pants, :count, :integer
    add_column :pants, :category, :text
    add_column :pants, :contents, :text
    add_column :pants, :image, :text
    add_column :pants, :season, :text
  end
end
