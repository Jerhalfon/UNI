class University < ApplicationRecord
  has_many :programs, dependent: :destroy
  belongs_to :location
end
