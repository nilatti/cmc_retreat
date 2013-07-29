class MakeFieldsNotNull < ActiveRecord::Migration
  change_column :families, :cabin, :integer, :null => false

end
