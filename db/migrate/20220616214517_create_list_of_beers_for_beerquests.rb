class CreateListOfBeersForBeerquests < ActiveRecord::Migration[6.1]
  def change
    create_table :list_of_beers_for_beerquests do |t|
      t.references :beerquest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
