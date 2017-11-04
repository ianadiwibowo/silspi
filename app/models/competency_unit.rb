class CompetencyUnit < ApplicationRecord
  belongs_to :certification_scheme

  validates :code, :name, :certification_scheme, presence: true
  validates :code, uniqueness: true
end
