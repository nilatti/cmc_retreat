class CreateFoodPromises < ActiveRecord::Migration
  def change
    create_table :food_promises do |t|
      t.references :food_item
      t.references :family

      t.timestamps
    end
    add_index :food_promises, :food_item_id
    add_index :food_promises, :family_id
  end
end
