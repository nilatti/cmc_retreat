class AddColumnsToVolunteerPromises < ActiveRecord::Migration
  def change
    add_column :volunteer_promises, :family_id, :integer
    add_column :volunteer_promises, :volunteer_task_id, :integer
  end
end
