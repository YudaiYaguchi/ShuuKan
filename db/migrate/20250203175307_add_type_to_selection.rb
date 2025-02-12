class AddTypeToSelection < ActiveRecord::Migration[7.2]
  def change
    add_column :selections, :type, :string
  end
end
