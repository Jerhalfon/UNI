class Favorite < ApplicationRecord
  # references
  belongs_to :program
  belongs_to :user

  # validations
  validates :program_id, uniqueness: { scope: :user, message: "Already in favorites" }
end
