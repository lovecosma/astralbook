class NoteSerializer < ActiveModel::Serializer
  attributes :id, :intention_id, :content
end
