class Location < ApplicationRecord
  # references
  has_many :universities

  # validations
  validates :country, presence: true
  validates :city, presence: true
end
