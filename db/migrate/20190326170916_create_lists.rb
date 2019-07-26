class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.text :description
      t.integer :likes
      t.integer :capacity
      t.boolean :is_public
      t.string :location
      t.integer :price
#change price to credits-base-system in the future
      t.datetime :start_time
      t.integer :length
#duration of list
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
