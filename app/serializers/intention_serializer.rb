class IntentionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :subintentions
end
