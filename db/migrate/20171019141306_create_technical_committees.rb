class CreateTechnicalCommittees < ActiveRecord::Migration[5.1]
  def change
    create_table :technical_committees do |t|
      t.string :license_number
      t.belongs_to :user

      t.timestamps
    end
  end
end
