class Beerquest < ApplicationRecord
  belongs_to :user
  belongs_to :beer
  belongs_to :bar
end
