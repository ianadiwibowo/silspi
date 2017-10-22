class CreateSupportingDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :supporting_documents do |t|
      t.string :title
      t.belongs_to :certification_registration
      t.integer :document_type
      t.text :description
      t.string :file
      t.integer :size

      t.timestamps
    end
  end
end
