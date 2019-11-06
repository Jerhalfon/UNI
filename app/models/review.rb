class Review < ApplicationRecord
  # references
  belongs_to :program
  belongs_to :user

  # validations
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :program_id, presence: true
  validates :user_id, presence: true, uniqueness: { scope: :program_id, message: "Already posted a review for this program" }
end
