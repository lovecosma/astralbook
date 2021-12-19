class CorrespondenceSerializer < ActiveModel::Serializer
  attributes :id, :name, :category_id, :category_title
  has_many :notes
end
