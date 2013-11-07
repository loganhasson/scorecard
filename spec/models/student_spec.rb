require 'spec_helper'

describe Student do
  context 'taking a deduction' do
    it 'should be able to deduct points when passed a deduction' do
      deduction = Deduction.create(:name => "Out of Seat", :value => 3)
      student = Student.create(:name => "Trey")
      scorecard_sheet = student.build_scorecard_sheet(:total => 100)

      student.deduct!(deduction)

      student.scorecard_sheet.total.should eq(97)
      student.scorecard_sheet.deductions.should include(deduction)
    end

    it 'should not add another deduction to the deductions table' do
      deduction = Deduction.create(:name => "Out of Seat", :value => 3)
      student = Student.create(:name => "Trey")
      scorecard_sheet = student.build_scorecard_sheet(:total => 100)

      student.deduct!(deduction)
      expect(Deduction.all.count).to eq(1)
    end
  end
end
