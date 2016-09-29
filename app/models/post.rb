class Post < ApplicationRecord
  enum status: [:on_moderation, :accepted, :rejected]
end
