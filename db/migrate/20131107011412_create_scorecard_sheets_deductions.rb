class CreateScorecardSheetsDeductions < ActiveRecord::Migration
  def change
    create_table :scorecard_sheets_deductions do |t|
      t.integer :scorecard_sheet_id
      t.integer :deduction_id
    end
  end
end
