class Farmers < ActiveRecord::Migration[6.1]
  def change
    create_table :farmers do |t|
      t.string :name
      t.integer :phone
      t.string :location
      t.timestamps
    end
  end
end
