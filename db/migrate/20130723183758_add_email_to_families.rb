class AddEmailToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :email, :string
  end
end
