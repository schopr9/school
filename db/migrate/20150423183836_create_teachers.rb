class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :teacher_id
      t.text :about_me

      t.timestamps null: false
    end
  end
end
