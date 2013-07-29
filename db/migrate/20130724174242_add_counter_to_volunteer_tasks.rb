class AddCounterToVolunteerTasks < ActiveRecord::Migration
  def change
    add_column :volunteer_tasks, :volunteer_promises_count, :integer
  end
end
