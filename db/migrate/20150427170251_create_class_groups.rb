class CreateClassGroups < ActiveRecord::Migration
  def change
    create_table :class_groups do |t|
      t.string :class_name
      t.integer :year
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
