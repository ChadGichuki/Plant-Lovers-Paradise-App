class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.string :best_climate
      t.string :water_frequency
      t.integer :no_in_stock
      t.string :image
      t.timestamps
    end
  end
end
