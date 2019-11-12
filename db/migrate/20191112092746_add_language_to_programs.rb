class AddLanguageToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :language, :string
  end
end
