class User < ApplicationRecord

	has_many :reservations, foreign_key: :id

	validates :name, presence: true
	validates :email, presence: true
	validates :password, presence: true

end
