class Program < ApplicationRecord
  belongs_to :category
  belongs_to :university
  has_many :reviews, dependent: :destroy
end
