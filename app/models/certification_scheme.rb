class CertificationScheme < ApplicationRecord
  has_many :competency_units

  enum type: %i[occupation cluster]
end
