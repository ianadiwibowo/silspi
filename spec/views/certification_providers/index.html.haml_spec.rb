require 'rails_helper'

RSpec.describe "certification_providers/index", type: :view do
  before(:each) do
    assign(:certification_providers, [
      CertificationProvider.create!(),
      CertificationProvider.create!()
    ])
  end

  it "renders a list of certification_providers" do
    render
  end
end
