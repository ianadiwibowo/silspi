class CreateSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :settings do |t|
      t.string :company_name
      t.string :company_logo
      t.text :company_address

      t.timestamps
    end
  end
end
