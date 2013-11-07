class Student < ActiveRecord::Base
  has_one :teacher, :through => :class
  has_one :scorecard_sheet

  def deduct!(deduction)
    self.scorecard_sheet.add_deduction(deduction)
  end

end