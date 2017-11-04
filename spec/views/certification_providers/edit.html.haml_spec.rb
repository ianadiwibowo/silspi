require 'rails_helper'

RSpec.describe "certification_providers/edit", type: :view do
  before(:each) do
    @certification_provider = assign(:certification_provider, CertificationProvider.create!())
  end

  it "renders the edit certification_provider form" do
    render

    assert_select "form[action=?][method=?]", certification_provider_path(@certification_provider), "post" do
    end
  end
end
