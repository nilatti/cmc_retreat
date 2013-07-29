class CreateVolunteerPromises < ActiveRecord::Migration
  def change
    create_table :volunteer_promises do |t|

      t.timestamps
    end
  end
end
