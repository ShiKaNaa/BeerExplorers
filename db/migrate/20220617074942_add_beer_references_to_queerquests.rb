class AddBeerReferencesToQueerquests < ActiveRecord::Migration[6.1]
  def change
    add_reference :list_of_beers_for_beerquests, :beer, foreign_key: true
  end
end
