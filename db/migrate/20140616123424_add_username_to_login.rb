class AddUsernameToLogin < ActiveRecord::Migration
  def change
    add_column :logins, :username, :string
  end
end
