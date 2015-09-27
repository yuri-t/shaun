class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :name, :null => false
      t.string :email

      t.timestamps
    end
  end
end
