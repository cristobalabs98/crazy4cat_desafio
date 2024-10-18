class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :reactions
  has_and_belongs_to_many :users
  # Opcionalmente si hay una relación N a N:
  has_and_belongs_to_many :users
end
