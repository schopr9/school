class AddColToDatesheet < ActiveRecord::Migration
  def change
    add_column :datesheets, :exam_name, :string
  end
end
