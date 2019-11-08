class Program < ApplicationRecord
  searchkick
  # references
  belongs_to :category
  belongs_to :university
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy

  has_many :users, through: :favorites

  # validations
  validates :name, presence: true
  validates :university, presence: true
end
