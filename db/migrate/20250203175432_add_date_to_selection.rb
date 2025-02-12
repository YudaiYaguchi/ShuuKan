class AddDateToSelection < ActiveRecord::Migration[7.2]
  def change
    add_column :selections, :date, :date
  end
end
