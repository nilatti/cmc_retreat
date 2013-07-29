class AddPromisesCounttoFoodItems < ActiveRecord::Migration
  def up
    add_column :food_items, :food_promises_count, :integer, :null => false, :default => 0
  end

  def down
    remove_column :food_items, :food_promises_count
  end
end
