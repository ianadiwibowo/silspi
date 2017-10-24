class CreateCompetencyUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :competency_units do |t|
      t.string :code
      t.string :name
      t.belongs_to :certification_scheme, index: { name: 'idx_competency_units_certification_scheme' }
      t.integer :display_order

      t.timestamps
    end
  end
end
