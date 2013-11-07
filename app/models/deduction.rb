class Deduction < ActiveRecord::Base
  has_many :scorecard_sheets_deductions
  has_many :scorecard_sheets, :through => :scorecard_sheets_deductions
end
