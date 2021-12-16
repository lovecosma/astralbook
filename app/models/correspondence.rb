class Correspondence < ApplicationRecord
    has_many :correspondences, through: :intentions
    belongs_to :category
    has_many :notes

    def uniqueness_within_category_and_intention
        cor = Correspondence.find_by(name: self.item_id, category_id: self.category_id)
        self.errors.add(:name, "Item already exists within this category") if !!cor
    end




end
