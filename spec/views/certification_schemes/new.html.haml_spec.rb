require 'rails_helper'

RSpec.describe "certification_schemes/new", type: :view do
  before(:each) do
    assign(:certification_scheme, CertificationScheme.new())
  end

  it "renders new certification_scheme form" do
    render

    assert_select "form[action=?][method=?]", certification_schemes_path, "post" do
    end
  end
end
