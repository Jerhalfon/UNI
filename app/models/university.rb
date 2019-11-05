class University < ApplicationRecord
  # references
  has_many :programs, dependent: :destroy
  belongs_to :location

  # validations
  validates :name, presence: true, uniqueness: true
end
