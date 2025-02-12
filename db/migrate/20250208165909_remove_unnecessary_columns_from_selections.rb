class RemoveUnnecessaryColumnsFromSelections < ActiveRecord::Migration[7.2]
  def change
    remove_column :selections, :date, :date
    remove_column :selections, :entry_date, :date
    remove_column :selections, :interview_date, :date
    remove_column :selections, :string, :string
  end
end
