class AddWebsiteUrlToCompany < ActiveRecord::Migration[7.2]
  def change
    add_column :companies, :website_url, :string
  end
end
