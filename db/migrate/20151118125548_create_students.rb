class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :username
      t.string :name
      t.text :other

      t.timestamps
    end
  end
end
