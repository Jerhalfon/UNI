class AddRemotePhotoUrlToUniversities < ActiveRecord::Migration[5.2]
  def change
    add_column :universities, :remote_photo_url, :string
  end
end
