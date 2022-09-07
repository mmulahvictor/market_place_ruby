class Items < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :amount
      t.integer :farmer_id
      t.integer :customer_id
      t.timestamps
    end
  end
end
