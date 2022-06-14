class CreateBeerquests < ActiveRecord::Migration[6.1]
  def change
    create_table :beerquests do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :beer, null: false, foreign_key: true
      t.references :bar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
