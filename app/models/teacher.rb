class Teacher < ActiveRecord::Base
  has_many :students, :through => :class
  has_one  :class
end