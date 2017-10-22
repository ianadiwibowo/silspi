class Review < ApplicationRecord
  belongs_to :certification_assessment
  belongs_to :assessor

  ### TODO: Add enum for status
end
