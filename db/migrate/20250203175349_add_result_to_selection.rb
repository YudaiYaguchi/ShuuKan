class AddResultToSelection < ActiveRecord::Migration[7.2]
  def change
    add_column :selections, :result, :string
  end
end
