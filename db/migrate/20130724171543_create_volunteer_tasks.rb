class CreateVolunteerTasks < ActiveRecord::Migration
  def change
    create_table :volunteer_tasks do |t|

      t.timestamps
    end
  end
end
