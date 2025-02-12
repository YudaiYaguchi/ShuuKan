class AddSelectionTypeToCompany < ActiveRecord::Migration[7.2]
  def change
    add_column :companies, :selection_type, :string
  end
end
