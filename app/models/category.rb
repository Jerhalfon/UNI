class Category < ApplicationRecord
  # references
  has_many :programs
  has_many :matches
  has_many :mbtis, through: :matches

  # validations
  validates :name, presence: true, uniqueness: true
end
