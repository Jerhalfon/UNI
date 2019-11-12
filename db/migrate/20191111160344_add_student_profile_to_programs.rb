class AddStudentProfileToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :student_profile, :string
  end
end
