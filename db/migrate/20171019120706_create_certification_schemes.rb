class CreateCertificationSchemes < ActiveRecord::Migration[5.1]
  def change
    create_table :certification_schemes do |t|
      t.string :code
      t.string :name
      t.integer :scheme_type
      t.float :certification_fee
      t.text :description

      t.timestamps
    end
  end
end
