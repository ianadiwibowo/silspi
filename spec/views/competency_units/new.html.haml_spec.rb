require 'rails_helper'

RSpec.describe "competency_units/new", type: :view do
  before(:each) do
    assign(:competency_unit, CompetencyUnit.new())
  end

  it "renders new competency_unit form" do
    render

    assert_select "form[action=?][method=?]", competency_units_path, "post" do
    end
  end
end
