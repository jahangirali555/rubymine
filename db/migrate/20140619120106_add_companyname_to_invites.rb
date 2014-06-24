class AddCompanynameToInvites < ActiveRecord::Migration
  def change
    add_column :invites, :company_name, :string
  end
end
