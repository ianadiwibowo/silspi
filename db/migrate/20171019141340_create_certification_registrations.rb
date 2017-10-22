class CreateCertificationRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :certification_registrations do |t|
      t.text :registration_notes
      t.integer :status
      t.belongs_to :student
      t.belongs_to :lsp_admin

      t.timestamps
    end
  end
end
