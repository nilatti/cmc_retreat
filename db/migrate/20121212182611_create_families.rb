class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.integer :cabin
      t.integer :camp
      t.integer :day_full_weekend
      t.integer :day_partial_weekend
      t.integer :contribution
      t.boolean :late_fee
      t.boolean :paid
      t.integer :friday_supper
      t.integer :friday_snack
      t.integer :saturday_breakfast
      t.integer :saturday_lunch
      t.integer :saturday_dinner
      t.integer :saturday_snack
      t.integer :sunday_breakfast
      t.integer :sunday_lunch
      t.string :allergies

      t.timestamps
    end
  end
end
