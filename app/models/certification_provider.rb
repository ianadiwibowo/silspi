class CertificationProvider < ApplicationRecord
  validates :name, :address, presence: true
  validates :name, :legal_entity_name, uniqueness: true
  validates :postal_code, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
end
