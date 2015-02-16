class CreateUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :text
    add_column :users, :last_name, :text
    add_column :users, :email, :text
    add_column :users, :password_digest, :text
    add_column :users, :outfit_id, :integer
    add_column :users, :top_id, :integer
    add_column :users, :pant_id, :integer
    add_column :users, :shoe_id, :integer
  end
end
