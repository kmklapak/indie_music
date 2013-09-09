class AddForeignKeyToUser < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.foreign_key :roles
  	end
  end
end
