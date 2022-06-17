class Beer < ApplicationRecord
  has_many :beer_collection_of_bars
  has_many :recommendations
  has_many :ratings
  has_many :chatrooms
  has_many :beerquests
  has_many :list_of_beers_for_beerquests
end
