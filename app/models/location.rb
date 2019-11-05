class Location < ApplicationRecord
  # references
  has_many :universities

  # validations
  validates :country, presence: true, uniqueness: true
  validates :city, presence: true
end
