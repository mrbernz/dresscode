class AddTopIdToOutfits < ActiveRecord::Migration
  def change
    add_column :outfits, :top_id, :integer
    add_foreign_key :outfits, :tops
    add_column :outfits, :pant_id, :integer
    add_foreign_key :outfits, :pants
    add_column :outfits, :shoe_id, :integer
    add_foreign_key :outfits, :shoes
  end
end
