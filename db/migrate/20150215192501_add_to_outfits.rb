class AddToOutfits < ActiveRecord::Migration
  def change
    add_column :outfits, :user_id, :integer
    add_foreign_key :outfits, :users
  end
end
