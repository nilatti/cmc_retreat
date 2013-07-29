class AddTimeToVolunteerTasks < ActiveRecord::Migration
  def change
  	add_column :volunteer_tasks, :time, :string
  end
end
