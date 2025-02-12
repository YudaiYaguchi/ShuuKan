class CreateSelections < ActiveRecord::Migration[7.2]
  def change
    create_table :selections do |t|
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.string :status
      t.date :entry_date
      t.date :interview_date

      t.timestamps
    end
  end
end
