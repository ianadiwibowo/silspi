require 'rails_helper'

RSpec.describe "certification_schemes/index", type: :view do
  before(:each) do
    assign(:certification_schemes, [
      CertificationScheme.create!(),
      CertificationScheme.create!()
    ])
  end

  it "renders a list of certification_schemes" do
    render
  end
end
