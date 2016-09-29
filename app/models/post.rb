class Post < ApplicationRecord
  enum status: [:on_moderation, :accepted, :rejected]
  has_and_belongs_to_many :categories
  validates :categories, :status, presence: true
end
