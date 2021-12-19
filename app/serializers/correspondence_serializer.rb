class CorrespondenceSerializer < ActiveModel::Serializer
  attributes :id, :name, :notes
  belongs_to :category
end
