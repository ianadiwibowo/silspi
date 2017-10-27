require 'rails_helper'

RSpec.describe "competency_units/edit", type: :view do
  before(:each) do
    @competency_unit = assign(:competency_unit, CompetencyUnit.create!())
  end

  it "renders the edit competency_unit form" do
    render

    assert_select "form[action=?][method=?]", competency_unit_path(@competency_unit), "post" do
    end
  end
end
