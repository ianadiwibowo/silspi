class CreateCertificationRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :certification_registrations do |t|
      t.text :registration_notes
      t.integer :status
      t.belongs_to :student, index: { name: 'idx_certification_registrations_student' }
      t.belongs_to :lsp_admin, index: { name: 'idx_certification_registrations_lsp_admin' }

      t.timestamps
    end
  end
end
