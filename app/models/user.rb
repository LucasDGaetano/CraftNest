class User < ApplicationRecord
has_many :reservations
has_many :ateliers
has_many :reviews
has_one_attached :profile_pic

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
validates :email, presence: true, length: { minimum: 10, maximum: 30 },format: { with: VALID_EMAIL_REGEX },uniqueness: { case_sensitive: false }
validates :username, presence: true
validates :name, presence: true
validates :last_name, presence: true
validates :password, presence: true, length: { minimum: 6, maximum: 15 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
