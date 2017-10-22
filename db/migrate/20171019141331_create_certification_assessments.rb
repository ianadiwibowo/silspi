class CreateCertificationAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :certification_assessments do |t|
      t.datetime :schedule
      t.integer :status
      t.text :assessor_comment
      t.belongs_to :student
      t.belongs_to :certification_registration
      t.belongs_to :certification_scheme
      t.belongs_to :certification_provider
      t.belongs_to :assessor

      t.timestamps
    end
  end
end
