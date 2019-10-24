class Gossip < ApplicationRecord
	has_many :users
	has_many :cities
	has_many :tags
end
