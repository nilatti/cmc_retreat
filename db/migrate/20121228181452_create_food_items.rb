class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :description
      t.integer :requested

      t.timestamps
    end
  end
end
