class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.string :class_num
      t.string :day_ofweek
      t.string :subject_1
      t.string :subject_2
      t.string :subject_3
      t.string :subject_4
      t.string :subject_5
      t.string :subject_6
      t.string :subject_7
      t.string :subject_8
      t.string :subject_9
      t.string :subject_10

      t.timestamps null: false
    end
  end
end
