class AddSelectionTypeToSelection < ActiveRecord::Migration[7.2]
  def change
    add_column :selections, :selection_type, :string
    add_column :selections, :string, :string
  end
end
