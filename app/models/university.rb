class University < ApplicationRecord
  # references
  has_many :programs, dependent: :destroy
  belongs_to :location

  # validations
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  # geocode
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
