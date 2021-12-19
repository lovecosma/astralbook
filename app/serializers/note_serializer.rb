class NoteSerializer < ActiveModel::Serializer
  attributes :id, :intention_id, :subintention_id, :content
end
