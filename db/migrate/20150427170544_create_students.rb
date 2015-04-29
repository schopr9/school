class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :stud_name
      t.date :stud_dob
      t.boolean :gender
      t.text :address
      t.string :email
      t.string :stud_image

      t.timestamps null: false
    end
  end
end
