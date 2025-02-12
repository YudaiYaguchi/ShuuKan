class CreateCompanies < ActiveRecord::Migration[7.2]
  def change
    create_table :companies do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :industry
      t.string :website

      t.timestamps
    end
  end
end
