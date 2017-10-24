class CreateCertificationAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :certification_assessments do |t|
      t.datetime :schedule
      t.integer :status
      t.text :assessor_comment
      t.belongs_to :student, index: { name: 'idx_certification_assessments_student' }
      t.belongs_to :certification_registration, index: { name: 'idx_certification_assessments_certification_registration' }
      t.belongs_to :certification_scheme, index: { name: 'idx_certification_assessments_certification_scheme' }
      t.belongs_to :certification_provider, index: { name: 'idx_certification_assessments_certification_provider' }
      t.belongs_to :assessor, index: { name: 'idx_certification_assessments_assessor' }

      t.timestamps
    end
  end
end
