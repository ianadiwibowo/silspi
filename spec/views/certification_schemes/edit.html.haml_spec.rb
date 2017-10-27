require 'rails_helper'

RSpec.describe "certification_schemes/edit", type: :view do
  before(:each) do
    @certification_scheme = assign(:certification_scheme, CertificationScheme.create!())
  end

  it "renders the edit certification_scheme form" do
    render

    assert_select "form[action=?][method=?]", certification_scheme_path(@certification_scheme), "post" do
    end
  end
end
