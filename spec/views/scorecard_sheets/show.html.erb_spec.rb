require 'spec_helper'

describe "scorecard_sheets/show" do
  before(:each) do
    @scorecard_sheet = assign(:scorecard_sheet, stub_model(ScorecardSheet,
      :total => 1,
      :student_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
