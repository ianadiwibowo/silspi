class CertificationAssessment < ApplicationRecord
  belongs_to :student
  belongs_to :certification_registration
  belongs_to :certification_scheme
  belongs_to :certification_provider
  belongs_to :assessor
end
