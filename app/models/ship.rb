class Ship < ApplicationRecord
  has_many :reservations, foreign_key: :ship_id
  validates :name, presence: true, length: {minimum:3, maximum: 20}, uniqueness: { case_sensitive: false, message: "%{value} is already taken" }
  validates :capacity, presence: true, numericality: { greater_than: 0 }
  validates :sale, inclusion: { in: [true, false] }
  validate :image, presence: true

end
