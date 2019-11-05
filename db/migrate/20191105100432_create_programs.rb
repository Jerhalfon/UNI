class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.integer :duration
      t.references :category, foreign_key: true
      t.references :university, foreign_key: true
      t.string :level

      t.timestamps
    end
  end
end
