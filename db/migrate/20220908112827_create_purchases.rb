class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.integer :plant_id
      t.integer :buyer_id
      t.integer :cost
    end
  end
end
