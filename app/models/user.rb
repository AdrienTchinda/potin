class User < ApplicationRecord
	has_many :gossips
	has_many :private_messages
end
