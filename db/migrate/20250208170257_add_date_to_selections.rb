class AddDateToSelections < ActiveRecord::Migration[7.2]
  def change
    add_column :selections, :date, :datetime
  end
end
