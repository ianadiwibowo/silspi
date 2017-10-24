class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :status
      t.datetime :review_date
      t.text :comment
      t.belongs_to :certification_assessment, index: { name: 'idx_reviews_certification_assessment' }
      t.belongs_to :assessor, index: { name: 'idx_reviews_assessor' }

      t.timestamps
    end
  end
end
