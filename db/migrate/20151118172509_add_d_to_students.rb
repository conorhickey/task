class AddDToStudents < ActiveRecord::Migration
  def change
    add_column :students, :d, :date
  end
end
