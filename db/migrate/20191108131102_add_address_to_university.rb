class AddAddressToUniversity < ActiveRecord::Migration[5.2]
  def change
    add_column :universities, :address, :string
  end
end
