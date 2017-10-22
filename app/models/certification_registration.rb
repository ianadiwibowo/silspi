class CertificationRegistration < ApplicationRecord
  belongs_to :student
  belongs_to :lsp_admin
end
