class CreateDatesheets < ActiveRecord::Migration
  def change
    create_table :datesheets do |t|
      t.string :class_name
      t.string :exam
      t.date :exam_date

      t.timestamps null: false
    end
  end
end
