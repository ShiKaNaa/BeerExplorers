class CreateBeerCollectionOfBars < ActiveRecord::Migration[6.1]
  def change
    create_table :beer_collection_of_bars do |t|
      t.references :beer, null: false, foreign_key: true
      t.references :bar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
