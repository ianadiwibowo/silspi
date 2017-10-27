require 'rails_helper'

RSpec.describe "competency_units/show", type: :view do
  before(:each) do
    @competency_unit = assign(:competency_unit, CompetencyUnit.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
