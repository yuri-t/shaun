class CreateFavoriteSites < ActiveRecord::Migration
  def change
    create_table :favorite_sites do |t|
      t.references :admin_users, index: true
      t.string :url
      t.integer :rate
      t.timestamps
    end
  end
end
