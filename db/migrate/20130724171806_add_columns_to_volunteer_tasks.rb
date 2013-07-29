class AddColumnsToVolunteerTasks < ActiveRecord::Migration
  def change
    add_column :volunteer_tasks, :job_title, :string
    add_column :volunteer_tasks, :job_description, :string
    add_column :volunteer_tasks, :requested, :integer
  end
end
