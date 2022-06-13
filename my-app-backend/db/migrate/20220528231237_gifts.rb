class Gifts < ActiveRecord::Migration[6.1]
  def change
    create_table :gifts do |t|
      t.string :description
      t.integer :price
      t.string :color 
      t.string :recipient
      t.integer :relative_id
    end
  end
end
