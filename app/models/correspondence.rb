class Correspondence < ApplicationRecord
    has_many :correspondences, through: :intentions
    belongs_to :category
    has_many :notes, dependent: :destroy

    def uniqueness_within_category_and_intention
        cor = Correspondence.find_by(name: self.name, category_id: self.category_id)
        self.errors.add(:name, "Correspondence already exists within this category") if !!cor
    end









end
