require 'rails_helper'

RSpec.describe "certification_providers/new", type: :view do
  before(:each) do
    assign(:certification_provider, CertificationProvider.new())
  end

  it "renders new certification_provider form" do
    render

    assert_select "form[action=?][method=?]", certification_providers_path, "post" do
    end
  end
end
