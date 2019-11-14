class AddCombinationToMbti < ActiveRecord::Migration[5.2]
  def change
    add_column :mbtis, :combination, :text, array: true, default: []
  end
end
