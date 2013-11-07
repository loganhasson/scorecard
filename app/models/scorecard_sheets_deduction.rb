class ScorecardSheetsDeduction < ActiveRecord::Base
  belongs_to :deduction
  belongs_to :scorecard_sheet
end