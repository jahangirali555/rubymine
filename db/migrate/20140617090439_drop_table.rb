class DropTable < ActiveRecord::Migration
  def change
  	drop_table :usertypes
  end
end
