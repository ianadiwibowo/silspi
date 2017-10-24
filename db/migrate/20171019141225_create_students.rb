class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :student_number
      t.belongs_to :user, index: { name: 'idx_students_user' }

      t.timestamps
    end
  end
end
