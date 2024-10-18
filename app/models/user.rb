class User < ApplicationRecord
     has_many :posts
     has_many :comments
     has_many :reactions
     has_and_belongs_to_many :posts
        # Validaciones adicionales
        validates :email, presence: true, uniqueness: true
end
