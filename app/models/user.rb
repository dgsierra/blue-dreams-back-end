class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :validatable

  devise :database_authenticatable, :registerable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  has_many :reservations

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
