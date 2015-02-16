class CreatePants < ActiveRecord::Migration
  def change
    create_table :pants do |t|

      t.timestamps null: false
    end
  end
end
