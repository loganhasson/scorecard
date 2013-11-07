class ScorecardSheet < ActiveRecord::Base
  belongs_to :student
  has_many   :deductions
end