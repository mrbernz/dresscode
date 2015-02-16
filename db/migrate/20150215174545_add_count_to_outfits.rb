class AddCountToOutfits < ActiveRecord::Migration
  def change
    add_column :outfits, :count, :integer
  end
end
