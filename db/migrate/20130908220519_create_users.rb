class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.foreign_key :role
      t.timestamps
    end
  end
end