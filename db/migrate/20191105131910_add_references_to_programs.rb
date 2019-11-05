class AddReferencesToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_reference :programs, :category, foreign_key: true
    add_reference :programs, :university, foreign_key: true
  end
end
