class CertificationProvider < ApplicationRecord
  validates :name, :address, presence: true
  validates :name, :legal_entity_name, uniqueness: true
  validates :postal_code, numericality: { greater_than_or_equal_to: 0 }, allow_blank: true

  mount_uploader :profile_photo, ImageUploader
  serialize :profile_photo, JSON
end
