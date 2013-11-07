class CreateHomerooms < ActiveRecord::Migration
  def change
    create_table :homerooms do |t|
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps
    end
  end
end
