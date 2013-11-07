class ScorecardSheet < ActiveRecord::Base
  belongs_to :student
  has_many   :scorecard_sheets_deductions
  has_many   :deductions, :through => :scorecard_sheets_deductions

  def add_deduction(deduction)
    self.scorecard_sheets_deductions.build(:deduction => deduction)
    self.total -= deduction.value
    self.save
  end

end