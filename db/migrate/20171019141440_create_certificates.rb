class CreateCertificates < ActiveRecord::Migration[5.1]
  def change
    create_table :certificates do |t|
      t.string :serial_number
      t.datetime :issue_date
      t.datetime :expiration_date
      t.belongs_to :certification_assessment

      t.timestamps
    end
  end
end
