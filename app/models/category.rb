class Category < ApplicationRecord
  # references
  has_many :programs

  # validations
  validates :name, presence: true
end
