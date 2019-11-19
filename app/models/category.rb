class Category < ApplicationRecord
  # references
  has_many :programs, dependent: :destroy
  has_many :matches, dependent: :destroy
  has_many :mbtis, through: :matches, dependent: :destroy

  # validations
  validates :name, presence: true, uniqueness: true
end
