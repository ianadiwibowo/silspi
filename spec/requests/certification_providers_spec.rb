require 'rails_helper'

RSpec.describe "CertificationProviders", type: :request do
  describe "GET /certification_providers" do
    it "works! (now write some real specs)" do
      get certification_providers_path
      expect(response).to have_http_status(200)
    end
  end
end
