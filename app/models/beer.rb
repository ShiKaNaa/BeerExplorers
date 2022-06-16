class Beer < ApplicationRecord
  has_many :beer_collection_of_bars
  has_many :recommendations
  has_many :ratings
  has_many :chatrooms
  has_many :beerquests
end
