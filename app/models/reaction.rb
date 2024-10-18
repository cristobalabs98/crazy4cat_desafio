class Reaction < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :like, inclusion: { in: [true, false] }
  validates :dislike, inclusion: { in: [true, false] }
end
