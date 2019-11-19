class AddIconToMbtis < ActiveRecord::Migration[5.2]
  def change
    add_column :mbtis, :icon, :string
  end
end
