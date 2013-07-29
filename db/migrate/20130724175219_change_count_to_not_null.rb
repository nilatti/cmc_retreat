class ChangeCountToNotNull < ActiveRecord::Migration
  def up
    change_column :volunteer_tasks, :volunteer_promises_count, :integer, :null => false
  end
end
