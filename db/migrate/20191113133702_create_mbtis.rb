class CreateMbtis < ActiveRecord::Migration[5.2]
  def change
    create_table :mbtis do |t|
      t.string :name

      t.timestamps
    end
  end
end
