class Favorite < ApplicationRecord
  # references
  belongs_to :program
  belongs_to :user

  # validations
  validates :program, presence: true
  validates :user, presence: true
end
