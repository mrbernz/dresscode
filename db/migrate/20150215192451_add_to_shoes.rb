class AddToShoes < ActiveRecord::Migration
  def change
    add_column :shoes, :user_id, :integer
    add_foreign_key :shoes, :users
  end
end
