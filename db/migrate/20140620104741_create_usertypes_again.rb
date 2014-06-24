class CreateUsertypesAgain < ActiveRecord::Migration
  def change
        create_table :usertypes do |t|
      t.integer :usertype_id
      t.string :usertype_title
      t.string :can_add_user
      t.string :can_view_user
      t.string :can_delete_user

      t.timestamps
    end
  end
end
