class IntentionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :correspondences
end
