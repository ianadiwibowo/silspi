require 'rails_helper'

RSpec.describe "CertificationSchemes", type: :request do
  describe "GET /certification_schemes" do
    it "works! (now write some real specs)" do
      get certification_schemes_path
      expect(response).to have_http_status(200)
    end
  end
end
