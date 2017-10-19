class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :password_hash
      t.string :profile_photo_path
      t.string :national_id_number
      t.integer :gender
      t.datetime :birthday
      t.text :address
      t.boolean :system_admin

      t.timestamps
    end
  end
end
