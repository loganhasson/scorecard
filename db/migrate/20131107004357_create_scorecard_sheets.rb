class CreateScorecardSheets < ActiveRecord::Migration
  def change
    create_table :scorecard_sheets do |t|
      t.integer :total
      t.integer :student_id

      t.timestamps
    end
  end
end
