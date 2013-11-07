class Student < ActiveRecord::Base
  has_one :teacher, :through => :class
  has_one :scorecard
end