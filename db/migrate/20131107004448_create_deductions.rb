class CreateDeductions < ActiveRecord::Migration
  def change
    create_table :deductions do |t|
      t.integer :value
      t.integer :scorecard_sheet_id

      t.timestamps
    end
  end
end
