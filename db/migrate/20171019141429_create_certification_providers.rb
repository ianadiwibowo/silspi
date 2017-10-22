class CreateCertificationProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :certification_providers do |t|
      t.string :name
      t.string :legal_entity_name
      t.string :profile_photo
      t.text :address
      t.string :postal_code
      t.string :city
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
