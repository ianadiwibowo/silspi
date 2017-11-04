require 'rails_helper'

RSpec.describe "certification_providers/show", type: :view do
  before(:each) do
    @certification_provider = assign(:certification_provider, CertificationProvider.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
