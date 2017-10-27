require 'rails_helper'

RSpec.describe "certification_schemes/show", type: :view do
  before(:each) do
    @certification_scheme = assign(:certification_scheme, CertificationScheme.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
