class CertificationScheme < ApplicationRecord
  has_many :competency_units

  enum type: [:okupasi, :klaster]
end
