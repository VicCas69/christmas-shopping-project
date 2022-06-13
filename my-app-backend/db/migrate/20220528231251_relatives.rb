class Relatives < ActiveRecord::Migration[6.1]
  def change
    create_table :relatives do |t|
      t.string :name
      t.string :relationship
    end
  end
end
