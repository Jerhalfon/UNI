class AddCourse1ToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :course1, :text, array: true, default: []
    add_column :programs, :course2, :text, array: true, default: []
    add_column :programs, :course3, :text, array: true, default: []
  end
end
