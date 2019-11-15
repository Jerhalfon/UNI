class User < ApplicationRecord



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy

  # enabling selecting favorite programs directly from  User
  has_many :programs, through: :favorites

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, PhotoUploader

  # avatar
  #has_one_attached :avatar

  # validations
  # validates :name, presence: true, uniqueness: true

    # @user.profilePicture = "/assets/images/default_image.jpg" if @user.profilePicture.empty?
end
