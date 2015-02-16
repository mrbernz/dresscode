class AddColumnToShoes < ActiveRecord::Migration
  def change
    add_column :shoes, :count, :integer
    add_column :shoes, :category, :text
    add_column :shoes, :contents, :text
    add_column :shoes, :image, :text
    add_column :shoes, :season, :text
  end
end
