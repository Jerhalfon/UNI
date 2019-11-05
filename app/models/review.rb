class Review < ApplicationRecord
  # references
  belongs_to :program
  belongs_to :user

  # validations
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
