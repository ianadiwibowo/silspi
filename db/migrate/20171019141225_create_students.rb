class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :student_number
      t.belongs_to :users

      t.timestamps
    end
  end
end
