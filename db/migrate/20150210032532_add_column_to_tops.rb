class AddColumnToTops < ActiveRecord::Migration
  def change
    add_column :tops, :count, :integer
    add_column :tops, :category, :text
    add_column :tops, :contents, :text
    add_column :tops, :image, :text
    add_column :tops, :season, :text
  end
end
