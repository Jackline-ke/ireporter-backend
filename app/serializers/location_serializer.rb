class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :posts


end
