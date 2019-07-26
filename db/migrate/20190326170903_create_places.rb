class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :category
      t.decimal :rating
      t.string :country
      t.string :city
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
