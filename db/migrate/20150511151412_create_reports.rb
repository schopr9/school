class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :student_id
      t.string :class_name
      t.integer :class_year
      t.string :exam_name
      t.string :subject_1
      t.integer :marks_1
      t.string :subject_2
      t.integer :marks_2
      t.string :subject_3
      t.integer :marks_3
      t.string :subject_4
      t.integer :marks_4
      t.string :subject_5
      t.integer :marks_5
      t.string :subject_6
      t.integer :marks_6
      t.string :subject_7
      t.integer :marks_7
      t.string :subject_8
      t.integer :marks_8
      t.string :subject_9
      t.integer :marks_9
      t.string :subject_10
      t.integer :marks_10
      t.string :comment
      t.integer :rank

      t.timestamps null: false
    end
  end
end
