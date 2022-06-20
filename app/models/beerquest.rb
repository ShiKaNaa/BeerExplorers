class Beerquest < ApplicationRecord
  belongs_to :user
  belongs_to :beer
  # belongs_to :bar

  # def add_beer_to_quest(beer_id)
  #   beer = Beer.find(beer_id)
  # end
end
