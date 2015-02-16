class AddToPants < ActiveRecord::Migration
  def change
  add_column :pants, :user_id, :integer
  add_foreign_key :pants, :users
  end
end
