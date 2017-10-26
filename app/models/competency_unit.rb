class CompetencyUnit < ApplicationRecord
  belongs_to :certification_scheme

  validates :code, :name, :display_order, :certification_scheme, presence: true
  validates :code, uniqueness: true
end
