class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  belongs_to :user
  belongs_to :location
  belongs_to :flag
  belongs_to :category
end
