class CertificationScheme < ApplicationRecord
  has_many :competency_units

  enum type: { occupation: 0, cluster: 1 }

  validates :code, :name, :scheme_type, :certification_fee, :description, presence: true
  validates :code, :name, uniqueness: true
  validates :certification_fee, numericality: { greater_than_or_equal_to: 0 }
end
