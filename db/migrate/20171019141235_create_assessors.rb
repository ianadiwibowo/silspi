class CreateAssessors < ActiveRecord::Migration[5.1]
  def change
    create_table :assessors do |t|
      t.string :license_number
      t.belongs_to :user, index: { name: 'idx_assessors_user' }

      t.timestamps
    end
  end
end
