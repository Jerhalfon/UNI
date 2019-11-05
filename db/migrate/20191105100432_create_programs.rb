class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.integer :duration
      t.string :level

      t.timestamps
    end
  end
end
