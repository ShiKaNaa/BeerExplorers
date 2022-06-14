class Recommendation < ApplicationRecord
  belongs_to :meal
  belongs_to :beer
end
