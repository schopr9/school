class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :titlt
      t.text :body

      t.timestamps null: false
    end
  end
end
