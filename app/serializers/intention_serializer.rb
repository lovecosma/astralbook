class IntentionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :correspondences
  has_many :subintentions
end
