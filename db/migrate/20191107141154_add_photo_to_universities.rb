class AddPhotoToUniversities < ActiveRecord::Migration[5.2]
  def change
    add_column :universities, :photo, :string
  end
end
