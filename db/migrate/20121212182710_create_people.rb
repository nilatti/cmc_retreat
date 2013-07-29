class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :age
      t.string :first_name
      t.string :last_name
      t.references :family
      t.timestamps
    end
  end
end
