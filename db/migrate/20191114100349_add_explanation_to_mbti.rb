class AddExplanationToMbti < ActiveRecord::Migration[5.2]
  def change
    add_column :mbtis, :explanation, :text
  end
end
