class DeleteToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :outfit_id
    remove_column :users, :top_id
    remove_column :users, :pant_id
    remove_column :users, :shoe_id
  end
end
