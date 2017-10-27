require 'rails_helper'

RSpec.describe "competency_units/index", type: :view do
  before(:each) do
    assign(:competency_units, [
      CompetencyUnit.create!(),
      CompetencyUnit.create!()
    ])
  end

  it "renders a list of competency_units" do
    render
  end
end
