class AddApplicationDeadlineToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :application_deadline, :string
  end
end
