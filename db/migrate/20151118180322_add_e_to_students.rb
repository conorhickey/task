class AddEToStudents < ActiveRecord::Migration
  def change
    add_column :students, :e, :string
  end
end
