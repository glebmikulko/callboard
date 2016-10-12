class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :price, :status
  has_many :categories
end
