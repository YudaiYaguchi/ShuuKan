class AddStatusToCompany < ActiveRecord::Migration[7.2]
  def change
    add_column :companies, :status, :integer
  end
end
