class User < ApplicationRecord
  has_many :comments
  has_many :sightings
end
