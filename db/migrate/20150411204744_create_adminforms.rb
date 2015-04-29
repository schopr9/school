class CreateAdminforms < ActiveRecord::Migration
  def change
    create_table :adminforms do |t|
      t.string :Name_of_student
      t.boolean :Gender
      t.integer :Class
      t.datetime :Date_of_birth
      t.string :Category
      t.string :Nationality
      t.string :Father_name
      t.string :Mother_name
      t.string :Address_line_1
      t.string :Address_line2
      t.string :City
      t.string :State
      t.integer :Pin_code
      t.string :Email
      t.integer :Phone
      t.string :Father_occupation
      t.string :Highest_degree_1
      t.integer :Annual_income_1
      t.string :Mother_occupation
      t.string :Highest_degree_2
      t.integer :Annual_income_2

      t.timestamps null: false
    end
  end
end
