class DropLateFeefromFamilies < ActiveRecord::Migration
  def up
    remove_column :families, :late_fee
  end

  def down
    add_column :families, :late_fee, :integer
  end
end
