class Location < ApplicationRecord
  # references
  has_many :universities, dependent: :destroy

  # validations
  validates :country, presence: true
  validates :city, presence: true

  def city_and_country
    "#{city}, #{country}"
  end
end
