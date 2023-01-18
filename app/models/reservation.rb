class Reservation < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  belongs_to :ship, foreign_key: :ship_id

  validates :user_id, presence: true
  validates :ship_id, presence: true
end
