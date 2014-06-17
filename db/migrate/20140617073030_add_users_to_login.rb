class AddUsersToLogin < ActiveRecord::Migration
  def change
    add_column :logins, :first_name, :string
    add_column :logins, :last_name, :string
    add_column :logins, :company_id, :integer
    add_column :logins, :usertype_id, :integer
    
  end
end
