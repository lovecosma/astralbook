class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :correspondences
end
