class AddKeysToUsers < ActiveRecord::Migration
  def change
    add_foreign_key :users, :outfits
    add_foreign_key :users, :tops
    add_foreign_key :users, :pants
    add_foreign_key :users, :shoes
  end
end
