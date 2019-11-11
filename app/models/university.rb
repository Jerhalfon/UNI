class University < ApplicationRecord
  # references
  has_many :programs, dependent: :destroy
  belongs_to :location

  # validations
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  mount_uploader :photo, PhotoUploader
end
