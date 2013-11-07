require 'spec_helper'

describe "scorecard_sheets/new" do
  before(:each) do
    assign(:scorecard_sheet, stub_model(ScorecardSheet,
      :total => 1,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new scorecard_sheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scorecard_sheets_path, "post" do
      assert_select "input#scorecard_sheet_total[name=?]", "scorecard_sheet[total]"
      assert_select "input#scorecard_sheet_student_id[name=?]", "scorecard_sheet[student_id]"
    end
  end
end
