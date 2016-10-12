class Post < ApplicationRecord
  enum status: {on_moderation: 0, accepted: 1, rejected: 2}
  has_and_belongs_to_many :categories
  validates :categories, :status, presence: true
end
