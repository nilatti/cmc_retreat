class AddDefaultToCounter < ActiveRecord::Migration
  def change
  	change_column :volunteer_tasks, :volunteer_promises_count, :integer, :null => false, :default => 0
  end
end
