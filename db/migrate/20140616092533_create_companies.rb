class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :company_id
      t.string :companyName

      t.timestamps
    end
  end
end
