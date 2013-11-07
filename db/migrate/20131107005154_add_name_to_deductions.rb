class AddNameToDeductions < ActiveRecord::Migration
  def change
    add_column :deductions, :name, :string
  end
end
