class AddCoordinatesToUniversity < ActiveRecord::Migration[5.2]
  def change
    add_column :universities, :latitude, :float
    add_column :universities, :longitude, :float
  end
end
