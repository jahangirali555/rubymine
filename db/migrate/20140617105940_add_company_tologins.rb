class AddCompanyTologins < ActiveRecord::Migration
  def change
  	add_column :logins, :company_name, :string
  end
end
