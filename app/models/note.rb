class Note < ApplicationRecord
    belongs_to :correspondence
    validate :uniqueness_within_intention_and_correspondence


    def uniqueness_within_intention_and_correspondence
        note = Note.find_by(content: self.content, intention_id: self.intention_id, correspondence_id: self.correspondence_id)
        errors.add(:content, "Content must be unique for Correspondence within scope of this intention intention.") if !!note 
    end
end
