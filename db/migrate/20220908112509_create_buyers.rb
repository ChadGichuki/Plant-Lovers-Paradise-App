class CreateBuyers < ActiveRecord::Migration[6.1]
  def change
    create_table :buyers do |t|
      t.string :name
      t.integer :contact
      t.string :feedback
    end
  end
end
