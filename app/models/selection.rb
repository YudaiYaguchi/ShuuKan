class Selection < ApplicationRecord
  belongs_to :user
  belongs_to :company

  def formatted_date
    date.strftime('%Y-%m-%d %H:%M') if date.present?
  end
end
