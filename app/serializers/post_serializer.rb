class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :price, :status
end
