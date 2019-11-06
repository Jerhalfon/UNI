class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy

  # enabling selecting favorite programs directly from  User
  has_many :programs, through: :favorites

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validations
  # validates :name, presence: true, uniqueness: true
end
