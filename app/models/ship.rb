class Ship < ApplicationRecord

	has_many :reservations, foreign_key: :ship_id

	validates :name, presence: true
	validates :capacity, presence: true
end
