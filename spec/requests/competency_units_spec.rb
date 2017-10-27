require 'rails_helper'

RSpec.describe "CompetencyUnits", type: :request do
  describe "GET /competency_units" do
    it "works! (now write some real specs)" do
      get competency_units_path
      expect(response).to have_http_status(200)
    end
  end
end
