class CreateUsertypes < ActiveRecord::Migration
  def change
    create_table :usertypes do |t|
      t.integer :usertype_id
      t.string :usertype_name
      t.string :can_create
      t.string :can_delete
      t.string :can_view

      t.timestamps
    end
  end
end
