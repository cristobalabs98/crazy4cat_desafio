class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post, optional: true

  # Validaciones
  validates :content, presence: true
end
