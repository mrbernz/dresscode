class AddToTops < ActiveRecord::Migration
  def change
  add_column :tops, :user_id, :integer
  add_foreign_key :tops, :users
  end
end
