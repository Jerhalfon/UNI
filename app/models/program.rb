class Program < ApplicationRecord
  # references
  belongs_to :category
  belongs_to :university
  has_many :reviews, dependent: :destroy

  # validations
  validates :name, presence: true
end
